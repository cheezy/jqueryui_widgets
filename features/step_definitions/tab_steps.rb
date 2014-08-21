Given /^I am on the tabs page$/ do
  visit TabsPage
end

When /^I select the "(.+)" tab$/ do |label|
  on(TabsPage).tabs.select(label)
end

Then /^the current tab should be "(.+)"$/ do |label|
  expect(on(TabsPage).tabs.selected).to eql label
end

Then /^the tab labels should include "([^"]*)"$/ do |label|
  expect(on(TabsPage).tabs.labels).to include label
end