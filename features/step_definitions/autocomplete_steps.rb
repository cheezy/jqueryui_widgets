Given(/^I am on the autocomplete page$/) do
  visit AutocompletePage
end

When(/^I enter "(\w+)" in the autocomplete widget$/) do |text|
  on(AutocompletePage).autocomplete = text
end

Then(/^I should see that each item in the autocomplete list contains "([^"]*)"$/) do |text|
  on(AutocompletePage) do |page|
    sleep 5
    page.autocomplete_element.results.each.should include text
  end
end