// Encapsulates terminal control (colors, cursor, ...)
// Author: Max Schwarz <max.schwarz@uni-bonn.de>

#ifndef TERMINAL_H
#define TERMINAL_H

#include <stdint.h>
#include <chrono>
#include <string>
#include <map>
#include <vector>

namespace rosmon
{

/**
 * @brief Encapsulates terminal control
 *
 * This class enables low-level manipulation of the terminal. It uses the
 * ncurses/terminfo library internally to stay somewhat portable.
 **/
class Terminal
{
public:
	/**
	 * @brief Simple colors
	 *
	 * These colors can be used with the setSimpleForeground(),
	 * setSimpleBackground(), setSimplePair() methods.
	 **/
	enum SimpleColor
	{
		Black,
		Red,
		Green,
		Yellow,
		Blue,
		Magenta,
		Cyan,
		White,
		IntenseBlack,
		IntenseRed,
		IntenseGreen,
		IntenseYellow,
		IntenseBlue,
		IntenseMagenta,
		IntenseCyan,
		IntenseWhite,

		//! 24-step grayscale starts here
		Grayscale = 0xe8
	};

	class Color
	{
	public:
		Color()
		{}

		void foreground() { fputs(m_fgString.c_str(), stdout); }
		void background() { fputs(m_bgString.c_str(), stdout); }

		const std::string& foregroundCode() const { return m_fgString; }
		const std::string& backgroundCode() const { return m_bgString; }
	private:
		friend class Terminal;

		Color(const std::string& fg, const std::string& bg)
		 : m_fgString{fg}, m_bgString{bg}
		{}

		std::string m_fgString;
		std::string m_bgString;
	};

	class Style
	{
	public:
		Style()
		{}

		Style(Color fg, Color bg)
		 : m_fg(std::move(fg)), m_bg(std::move(bg))
		{}

		void use()
		{
			m_fg.foreground();
			m_bg.background();
		}
	private:
		Color m_fg;
		Color m_bg;
	};

	/**
	 * @brief Terminal escape sequence parser
	 *
	 * This class allows the user to parse Linux escape sequences
	 * (restricted to simple color sequences for now).
	 **/
	class Parser
	{
	public:
		Parser() {}
		Parser(Terminal* terminal);

		//! parse single character c
		bool parse(char c);

		//! parse string
		void parse(const std::string& str);

		//! Apply the current internal state (colors) on the terminal
		void apply();

		/**
		 * @brief Apply line wrapping
		 *
		 * Each returned line contains the appropriate escape sequences to set
		 * up the current color mode.
		 **/
		std::vector<std::string> wrap(const std::string& str, unsigned int columns);
	private:
		void parseSetAttributes(const std::string& str);

		enum State
		{
			STATE_ESCAPE,
			STATE_TYPE,
			STATE_CSI
		};

		Terminal* m_term = nullptr;

		State m_state = STATE_ESCAPE;
		std::string m_buf;

		Color m_fgColor;
		Color m_bgColor;
		bool m_bold = false;
	};

	Terminal();

	Color color(SimpleColor code);
	Color color(uint32_t truecolor, SimpleColor fallback);

	/**
	 * @brief Set 24-bit foreground color
	 *
	 * This automatically falls back to 256 colors if the terminal does not
	 * support true color.
	 **/
	void setForegroundColor(uint32_t color);

	/**
	 * @brief Set 24-bit background color
	 *
	 * This automatically falls back to 256 colors if the terminal does not
	 * support true color.
	 **/
	void setBackgroundColor(uint32_t color);

	//! hide cursor
	void setCursorInvisible();

	//! restore cursor
	void setCursorVisible();

	/**
	 * Enable/disable automatic echo of keypresses
	 **/
	void setEcho(bool on);

	void setBold(bool on);

	//! @name Set indexed foreground/background color
	//@{
	void setSimpleBackground(SimpleColor color);
	void setSimpleForeground(SimpleColor color);
	void setSimplePair(SimpleColor fg, SimpleColor bg);
	//@}

	//! Reset fg + bg to standard terminal colors
	void setStandardColors();

	//! Escape codes for standard colors
	std::string standardColorCode();

	//! Clear characters from cursor to end of line
	void clearToEndOfLine();

	//! Move cursor up by numLines
	void moveCursorUp(int numLines);

	//! Move cursor to start of the line
	void moveCursorToStartOfLine();

	/**
	 * @brief Get current window size
	 *
	 * @return true on success
	 **/
	bool getSize(int* columns, int* rows);

	/**
	 * Returns whether the terminal supports 256 colors. If it does not suppport
	 * 256 colors, you should not use the setForegroundColor() /
	 * setBackgroundColor() functions.
	 **/
	bool has256Colors() const;

	/**
	 * Terminal supports escape codes
	 **/
	bool interactive() const
	{ return m_valid; }

	void setWindowTitle(const std::string& title);
	void clearWindowTitle(const std::string& backup);


	enum SpecialKey
	{
		SK_F1 = 0x100, SK_F2, SK_F3, SK_F4,
		SK_F5, SK_F6, SK_F7, SK_F8,
		SK_F9, SK_F10, SK_F11, SK_F12,

		SK_Backspace,

		SK_Up, SK_Down, SK_Left, SK_Right
	};

	int readKey();
	int readLeftover();

	/**
	 * Enable/disable terminal linewrap
	 **/
	void setLineWrap(bool on);

private:
	bool m_valid;
	bool m_256colors;
	bool m_truecolor;

	std::string m_bgColorStr;
	std::string m_fgColorStr;
	std::string m_opStr;
	std::string m_sgr0Str;
	std::string m_elStr;
	std::string m_upStr;
	std::string m_boldStr;
	std::string m_lineWrapOffStr;
	std::string m_lineWrapOnStr;

	std::map<std::string, SpecialKey> m_specialKeys;

	std::string m_currentEscapeStr;
	std::chrono::steady_clock::time_point m_escapeStartTime;
	bool m_currentEscapeAborted = false;
	unsigned int m_currentEscapeAbortIdx = 0;
};

}

#endif
