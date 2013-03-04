Given /^I am on the menus page$/ do
  visit MenuPage
end

When /^I select the "(.+)" menu option$/ do |item|
  on(MenuPage).menus.select_base_menu item
end

Then /^I should see the inactive option "(.+)"$/ do |item|
  on(MenuPage).menus.inactive_menu_items.should include item
end

When /^I should see the "(.+)" option$/ do |item|
  on(MenuPage).menus.menu_items.should include item
end