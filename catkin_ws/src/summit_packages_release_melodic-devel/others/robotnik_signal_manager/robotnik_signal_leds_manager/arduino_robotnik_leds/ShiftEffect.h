

  #ifndef _SHIFT_EFFECT_H_
  #define _SHIFT_EFFECT_H_
  #include <Arduino.h>
  #include "CommonEffect.h"
  
  
  class ShiftEffect: public CommonEffect{
    
    private:

      /* Auxiliar global variables */
      //elapsedMicros shift_time;
      float shift_time = 0;
      int count_pixel = 0; 
      uint8_t shift_state = 0;
      uint16_t shift_pixels;
      float shift_time_ms = 0;
      float speed_per_pixel = 0;
/*
      int led_counter = 0;   
      enum state_machine {WAIT_FINAL_LED_ON,  WAIT_FINAL_LED_OFF};
      int state = WAIT_FINAL_LED_ON;
      int aux_counter = 0;
*/
      enum shift_resources{PRINT_LEDS, WAIT_NEXT_LEDS, RESET_LEDS, WAIT_RESTART, WAIT_SLEEP, WAIT_LAST_LED};
      int state = WAIT_NEXT_LEDS;
      int current_led = 0, last_led = 0; 
      int led_counter = 0;
      int get_next_led(int init_led, int end_led, int led_increment);
      int sleep_timeout;

      float tic = 0, toc = 0;
      
    public:
    
      ShiftEffect(WS2812Serial &pixels);

      uint8_t shift_mode( struct leds_shift shift_config);
      void run(void);
 
  };


  
  #endif
