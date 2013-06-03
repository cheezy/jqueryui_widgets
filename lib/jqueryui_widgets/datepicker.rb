
#
# Class that wraps around the Datepicker widget, allowing for the
# user to interact with single or multiple Datepicker widgets, as
# long as only a single Datepicker is active.
#
# NOTE: We've kept to the basic functionality of the Datepicker
# widget, allowing for extendability of the class, and to avoid
# any difficulty by focusing on minutiae.
#

class JQueryUIWidgets::Datepicker < PageObject::Elements::TextField

  #
  # Generates nine methods.
  #
  # The {NAME}= method allows the user to set the value
  # of the text field that generates the Datepicker widget.
  #
  # The {NAME} method returns the value of the Datepicker text field.
  #
  # The {NAME}_select_day method allows the user to pass in a variable to
  # search through the Datepicker widget table and click on that variable,
  # in this case the day.
  #
  # @params: [variable] the day to find.
  #
  # @example:
  #    datepicker_select_day '10'
  #     Will search through the datepicker table and click on the 10th
  #     day of the month.
  #
  # The {NAME}_next_month method will click the next month arrow,
  # setting the datepicker widget to the next month.
  #
  # The {NAME}_previous_month method will click the previous month
  # arrow, setting the datepicker widget to the previous month.
  #
  # The {NAME}_day method will search through the datepicker table
  # and return the day with the class of 'ui-state-active', which is
  # the current day according to the widget.
  #
  # The {NAME}_month method will return the month header of the
  # datepicker table, and return the current month.
  #
  # The {NAME}_year method will return the year header of the
  # datepicker table, and return the current year.
  #
  def self.accessor_methods(accessor, name)
    accessor.send :define_method, "#{name}=" do |date|
      self.send("#{name}_element").value = date
    end

    accessor.send :define_method, name do
      self.send("#{name}_element").value
    end

    accessor.send :define_method, "#{name}_select_day" do |day|
      datepicker_div.table_element.link_element(:text => day).click
    end

    accessor.send :define_method, "#{name}_next_month" do
      datepicker_div.link_element(:class => 'ui-datepicker-next').click
    end

    accessor.send :define_method, "#{name}_previous_month" do
      datepicker_div.link_element(:class => 'ui-datepicker-prev').click
    end

    accessor.send :define_method, "#{name}_day" do
      datepicker_div.table_element.link_element(:class => 'ui-state-active').text
    end

    accessor.send :define_method, "#{name}_month" do
      datepicker_div.div_element(:class => 'ui-datepicker-title').span_element(:class => 'ui-datepicker-month').text
    end

    accessor.send :define_method, "#{name}_year" do
      datepicker_div.div_element(:class => 'ui-datepicker-title').span_element(:class => 'ui-datepicker-year').text
    end

    accessor.send :define_method, "datepicker_div" do
      self.send "div_element", :id => 'ui-datepicker-div'
    end

    accessor.send :private, :datepicker_div

  end


end