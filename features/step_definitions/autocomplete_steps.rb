Given(/^I am on the autocomplete page$/) do
  visit AutocompletePage
end

When(/^I enter "(\w+)" in the autocomplete widget$/) do |text|
  on(AutocompletePage).autocomplete = text
end

Then(/^I should see that each item in the autocomplete list contains "([^"]*)"$/) do |text|
  on(AutocompletePage) do |page|
    page.autocomplete_unordered_list_element.list_item_element.when_visible
    page.autocomplete_unordered_list_element.list_item_elements.to_s.should include text
  end
end

Then(/^I should be able to select "([^"]*)" from the autocomplete list$/) do |option|
  on(AutocompletePage) do |page|
    page.autocomplete_unordered_list_element.list_item_element.when_visible
    page.autocomplete_unordered_list_element.list_item_element(:text => "#{option}").click
  end
end