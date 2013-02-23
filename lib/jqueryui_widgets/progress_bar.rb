class JQueryUIWidgets::ProgressBar < PageObject::Elements::Div

  def minimum
    minimum = attribute('aria-valuemin')
    minimum = minimum.to_i if minimum
    minimum
  end

  def maximum
    maximum = attribute('aria-valuemax')
    maximum = maximum.to_i if maximum
    maximum
  end

  def current
    current = attribute('aria-valuenow')
    current = current.to_i if current
    current
  end
end