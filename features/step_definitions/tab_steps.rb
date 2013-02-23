Given /^I am on the tabs page$/ do
  visit TabsPage
end

When /^I select the "(.+)" tab$/ do |label|
  on(TabsPage).tabs.select(label)
end
