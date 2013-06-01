class JQueryUIWidgets::Datepicker < PageObject::Elements::TextField

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