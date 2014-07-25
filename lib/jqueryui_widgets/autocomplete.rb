
#
# Class that wraps around the Autocomplete widget, allowing for
# the user to interact with the Autocomplete widget, as long
# as it is active.
#
# NOTE: We've only kept to the basic functionality of the
# Autocmplete widget, allowing for extendability of the class, and
# to avoid any difficulty by focusing on minutiae.
#

class JQueryUIWidgets::Autocomplete < PageObject::Elements::TextField

  def self.accessor_methods(accessor, name)
    accessor.send :define_method, "#{name}=" do |text|
      self.send("#{name}_element").value = text
    end

    accessor.send :define_method, name do
      self.send("#{name}_element").value
    end

    def results
      autocomplete_div_element.list_item_elements.class('ui-menu-item').map(&:text)
    end

    def select(item)
      the_autocomplete = results
      index = the_autocomplete.find_index do |autocomplete|
        autocomplete.text == item
      end
      the_autocomplete[index].click
      wait_for_content(index)
    end

    accessor.send :define_method, "autocomplete_list" do
      self.send "unordered_list_element", :id => 'ui-id-1'
    end

    accessor.send :private, :autocomplete_list


  end


  private

  def wait_for_content(index)
    the_content = list_item_elements(:class => 'ui-menu-item')[index]
    wait_until(1, "Content not visible within one second") do
      the_content.text.empty? == false
    end
  end

end