class JQueryUIWidgets::ProgressBar < PageObject::Elements::Div

  def minimum
    minimum = attribute('aria-valuemin')
    minimum = minimum.to_i if minimum
    minimum
  end

  def maximum
    attribute('aria-valuemax')
  end
end