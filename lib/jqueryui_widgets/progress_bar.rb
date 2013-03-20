
#
# The progress bar class will interact with the
# JQuery UI Widget Progress Bar and allow for
# returning the Minimum value, Maximum Value and
# Current progress.
#
class JQueryUIWidgets::ProgressBar < PageObject::Elements::Div

  #
  # The minimum function returns the minimum
  # possible value of the progress bar by
  # returning the 'aria-valuemin' attribute's
  # value.
  #
  def minimum
    convert_to_number attribute('aria-valuemin')
  end

  #
  # The maximum function returns the maximum
  # value of the progress bar by returning
  # the 'aria-valuemax' attribute's value.
  def maximum
    convert_to_number attribute('aria-valuemax')
  end

  #
  # The Current function returns the current
  # value of the progress bar by returning the
  # 'aria-valuenow' attribute's value.
  #
  def current
    convert_to_number attribute('aria-valuenow')
  end

  private
  def convert_to_number(value)
    value = value.to_i if value
    value
  end

end