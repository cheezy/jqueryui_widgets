Given /^I am on the menus page$/ do
  visit MenuPage
end

When /^I select the "(.+)" menu option$/ do |item|
  on(MenuPage).menus.select item
end

Then /^I should see the inactive option "(.+)", "(.+)"$/ do |item1, item2|
  item = on(MenuPage).menus.search_for(item1, item2)
  item.attribute('class').should include 'ui-state-disabled'
end

When /^I should see the "(.+)", "(.+)", "(.+)" option$/ do |item1, item2, item3|
  item = on(MenuPage).menus.search_for(item1, item2, item3)
  item.should_not be_nil
end

When /^I select "(.+)" and "(.+)" and "(.+)"$/ do |item1, item2, item3|
  on(MenuPage).menus.select item1, item2, item3
end

Then /^I should have an error when I search for menu item "([^"]*)"$/ do |item|
  expect {on(MenuPage).menus.search_for(item)}.to raise_error("Unable to find menu item #{item}")
end

When /^I should see the "([^"]*)", "([^"]*)" option$/ do |item1, item2|
  item = on(MenuPage).menus.search_for(item1, item2)
  item.should_not be_nil
end