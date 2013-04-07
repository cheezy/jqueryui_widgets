require 'jqueryui_widgets/core_ext/string'

#
# The progress bar class will interact with the
# JQuery UI Widget Progress Bar and allow for
# returning the Minimum value, Maximum Value and
# Current progress.
#
# NOTE: As with all JQuery UI Widgets, we have
# left the Progress Bar code with the basics
# of functionality to allow the user to
# customize the gem to suit their own needs.
#
class JQueryUIWidgets::ProgressBar < PageObject::Elements::Div

  #
  # Generates three methods.
  #
  # The {NAME}_min function returns the minimum
  # possible value of the progress bar by
  # returning the 'aria-valuemin' attribute's
  # value.
  #
  # The {NAME}_max function returns the maximum
  # value of the progress bar by returning
  # the 'aria-valuemax' attribute's value.
  #
  # The {NAME} function returns the current
  # value of the progress bar by returning the
  # 'aria-valuenow' attribute's value.
  #
  def self.accessor_methods(accessor, name)
    accessor.send :define_method, "#{name}" do
      progress_bar = self.send "#{name}_element"
      progress_bar.attribute('aria-valuenow').convert_to_number
    end

    accessor.send :define_method, "#{name}_min" do
      progress_bar = self.send "#{name}_element"
      progress_bar.attribute('aria-valuemin').convert_to_number
    end

    accessor.send :define_method, "#{name}_max" do
      progress_bar = self.send "#{name}_element"
      progress_bar.attribute('aria-valuemax').convert_to_number
    end

  end

end