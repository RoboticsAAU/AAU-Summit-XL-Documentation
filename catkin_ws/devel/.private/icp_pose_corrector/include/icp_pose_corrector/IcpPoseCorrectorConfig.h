//#line 2 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the icp_pose_corrector package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __icp_pose_corrector__ICPPOSECORRECTORCONFIG_H__
#define __icp_pose_corrector__ICPPOSECORRECTORCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace icp_pose_corrector
{
  class IcpPoseCorrectorConfigStatics;

  class IcpPoseCorrectorConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(IcpPoseCorrectorConfig &config, const IcpPoseCorrectorConfig &max, const IcpPoseCorrectorConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const IcpPoseCorrectorConfig &config1, const IcpPoseCorrectorConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, IcpPoseCorrectorConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const IcpPoseCorrectorConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, IcpPoseCorrectorConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const IcpPoseCorrectorConfig &config) const = 0;
      virtual void getValue(const IcpPoseCorrectorConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T IcpPoseCorrectorConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T IcpPoseCorrectorConfig::* field;

      virtual void clamp(IcpPoseCorrectorConfig &config, const IcpPoseCorrectorConfig &max, const IcpPoseCorrectorConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const IcpPoseCorrectorConfig &config1, const IcpPoseCorrectorConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, IcpPoseCorrectorConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const IcpPoseCorrectorConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, IcpPoseCorrectorConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const IcpPoseCorrectorConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const IcpPoseCorrectorConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, IcpPoseCorrectorConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, IcpPoseCorrectorConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T PT::* field;
      std::vector<IcpPoseCorrectorConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(IcpPoseCorrectorConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("minimum_coincidences"==(*_i)->name){minimum_coincidences = boost::any_cast<int>(val);}
        if("minimum_area_covered"==(*_i)->name){minimum_area_covered = boost::any_cast<double>(val);}
        if("obstacle_value"==(*_i)->name){obstacle_value = boost::any_cast<int>(val);}
        if("outer_iterations"==(*_i)->name){outer_iterations = boost::any_cast<int>(val);}
        if("inner_iterations"==(*_i)->name){inner_iterations = boost::any_cast<int>(val);}
        if("max_allowed_distance_correction"==(*_i)->name){max_allowed_distance_correction = boost::any_cast<double>(val);}
        if("max_allowed_angular_correction"==(*_i)->name){max_allowed_angular_correction = boost::any_cast<double>(val);}
        if("inflation_distance"==(*_i)->name){inflation_distance = boost::any_cast<double>(val);}
        if("update_min_d"==(*_i)->name){update_min_d = boost::any_cast<double>(val);}
        if("update_min_a"==(*_i)->name){update_min_a = boost::any_cast<double>(val);}
        if("enabled"==(*_i)->name){enabled = boost::any_cast<bool>(val);}
      }
    }

    int minimum_coincidences;
double minimum_area_covered;
int obstacle_value;
int outer_iterations;
int inner_iterations;
double max_allowed_distance_correction;
double max_allowed_angular_correction;
double inflation_distance;
double update_min_d;
double update_min_a;
bool enabled;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int minimum_coincidences;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double minimum_area_covered;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int obstacle_value;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int outer_iterations;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int inner_iterations;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_allowed_distance_correction;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_allowed_angular_correction;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double inflation_distance;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double update_min_d;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double update_min_a;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool enabled;
//#line 228 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("IcpPoseCorrectorConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const IcpPoseCorrectorConfig &__max__ = __getMax__();
      const IcpPoseCorrectorConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const IcpPoseCorrectorConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const IcpPoseCorrectorConfig &__getDefault__();
    static const IcpPoseCorrectorConfig &__getMax__();
    static const IcpPoseCorrectorConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const IcpPoseCorrectorConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void IcpPoseCorrectorConfig::ParamDescription<std::string>::clamp(IcpPoseCorrectorConfig &config, const IcpPoseCorrectorConfig &max, const IcpPoseCorrectorConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class IcpPoseCorrectorConfigStatics
  {
    friend class IcpPoseCorrectorConfig;

    IcpPoseCorrectorConfigStatics()
    {
IcpPoseCorrectorConfig::GroupDescription<IcpPoseCorrectorConfig::DEFAULT, IcpPoseCorrectorConfig> Default("Default", "", 0, 0, true, &IcpPoseCorrectorConfig::groups);
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.minimum_coincidences = 5;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.minimum_coincidences = 100;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.minimum_coincidences = 5;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<int>("minimum_coincidences", "int", 0, "Minimum number of coincidences to accept registration", "", &IcpPoseCorrectorConfig::minimum_coincidences)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<int>("minimum_coincidences", "int", 0, "Minimum number of coincidences to accept registration", "", &IcpPoseCorrectorConfig::minimum_coincidences)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.minimum_area_covered = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.minimum_area_covered = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.minimum_area_covered = 100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("minimum_area_covered", "double", 0, "Minimum area covered to accept registration", "", &IcpPoseCorrectorConfig::minimum_area_covered)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("minimum_area_covered", "double", 0, "Minimum area covered to accept registration", "", &IcpPoseCorrectorConfig::minimum_area_covered)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.obstacle_value = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.obstacle_value = 255;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.obstacle_value = 100;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<int>("obstacle_value", "int", 0, "Value at which obstacles are represented in the recevied map", "", &IcpPoseCorrectorConfig::obstacle_value)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<int>("obstacle_value", "int", 0, "Value at which obstacles are represented in the recevied map", "", &IcpPoseCorrectorConfig::obstacle_value)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.outer_iterations = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.outer_iterations = 10;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.outer_iterations = 5;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<int>("outer_iterations", "int", 0, "Iterations of recursive execution", "", &IcpPoseCorrectorConfig::outer_iterations)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<int>("outer_iterations", "int", 0, "Iterations of recursive execution", "", &IcpPoseCorrectorConfig::outer_iterations)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.inner_iterations = 100;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.inner_iterations = 1000;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.inner_iterations = 250;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<int>("inner_iterations", "int", 0, "Iterations for each registration execution", "", &IcpPoseCorrectorConfig::inner_iterations)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<int>("inner_iterations", "int", 0, "Iterations for each registration execution", "", &IcpPoseCorrectorConfig::inner_iterations)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_allowed_distance_correction = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_allowed_distance_correction = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_allowed_distance_correction = 0.4;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("max_allowed_distance_correction", "double", 0, "Maximum distance correction, if it is more, it will discard the correction", "", &IcpPoseCorrectorConfig::max_allowed_distance_correction)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("max_allowed_distance_correction", "double", 0, "Maximum distance correction, if it is more, it will discard the correction", "", &IcpPoseCorrectorConfig::max_allowed_distance_correction)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_allowed_angular_correction = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_allowed_angular_correction = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_allowed_angular_correction = 0.4;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("max_allowed_angular_correction", "double", 0, "Maximum angular correction, if it is more, it will discard the correction", "", &IcpPoseCorrectorConfig::max_allowed_angular_correction)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("max_allowed_angular_correction", "double", 0, "Maximum angular correction, if it is more, it will discard the correction", "", &IcpPoseCorrectorConfig::max_allowed_angular_correction)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.inflation_distance = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.inflation_distance = 0.5;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.inflation_distance = 0.15;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("inflation_distance", "double", 0, "Distance arround map points where scan match points will be used to correct the pose", "", &IcpPoseCorrectorConfig::inflation_distance)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("inflation_distance", "double", 0, "Distance arround map points where scan match points will be used to correct the pose", "", &IcpPoseCorrectorConfig::inflation_distance)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.update_min_d = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.update_min_d = 5.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.update_min_d = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("update_min_d", "double", 0, "Euclidean distance before performing a pose registration", "", &IcpPoseCorrectorConfig::update_min_d)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("update_min_d", "double", 0, "Euclidean distance before performing a pose registration", "", &IcpPoseCorrectorConfig::update_min_d)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.update_min_a = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.update_min_a = 6.28318530718;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.update_min_a = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("update_min_a", "double", 0, "Angular distance before performing a pose registration", "", &IcpPoseCorrectorConfig::update_min_a)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<double>("update_min_a", "double", 0, "Angular distance before performing a pose registration", "", &IcpPoseCorrectorConfig::update_min_a)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.enabled = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.enabled = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.enabled = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<bool>("enabled", "bool", 0, "Wether to apply corrections or not", "", &IcpPoseCorrectorConfig::enabled)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr(new IcpPoseCorrectorConfig::ParamDescription<bool>("enabled", "bool", 0, "Wether to apply corrections or not", "", &IcpPoseCorrectorConfig::enabled)));
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(IcpPoseCorrectorConfig::AbstractGroupDescriptionConstPtr(new IcpPoseCorrectorConfig::GroupDescription<IcpPoseCorrectorConfig::DEFAULT, IcpPoseCorrectorConfig>(Default)));
//#line 366 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<IcpPoseCorrectorConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<IcpPoseCorrectorConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    IcpPoseCorrectorConfig __max__;
    IcpPoseCorrectorConfig __min__;
    IcpPoseCorrectorConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const IcpPoseCorrectorConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static IcpPoseCorrectorConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &IcpPoseCorrectorConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const IcpPoseCorrectorConfig &IcpPoseCorrectorConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const IcpPoseCorrectorConfig &IcpPoseCorrectorConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const IcpPoseCorrectorConfig &IcpPoseCorrectorConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<IcpPoseCorrectorConfig::AbstractParamDescriptionConstPtr> &IcpPoseCorrectorConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<IcpPoseCorrectorConfig::AbstractGroupDescriptionConstPtr> &IcpPoseCorrectorConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const IcpPoseCorrectorConfigStatics *IcpPoseCorrectorConfig::__get_statics__()
  {
    const static IcpPoseCorrectorConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = IcpPoseCorrectorConfigStatics::get_instance();

    return statics;
  }


}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __ICPPOSECORRECTORRECONFIGURATOR_H__
