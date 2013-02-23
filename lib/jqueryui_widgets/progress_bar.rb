class JQueryUIWidgets::ProgressBar < PageObject::Elements::Div

  def minimum
    convert_to_number attribute('aria-valuemin')
  end

  def maximum
    convert_to_number attribute('aria-valuemax')
  end

  def current
    convert_to_number attribute('aria-valuenow')
  end

  private
  def convert_to_number(value)
    value = value.to_i if value
    value
  end

end