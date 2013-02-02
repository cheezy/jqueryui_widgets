Given /^I am on the basic dialog page$/ do
  visit BasicDialogPage
end

Then /^the basic dialog title should be "([^"]*)"$/ do |title|
  on(BasicDialogPage).basic_dialog.title.should == title
end

When /^the content should include "([^"]*)"$/ do |content|
  on(BasicDialogPage).basic_dialog.content.should include content
end

When /^I close the basic dialog$/ do
  on(BasicDialogPage).basic_dialog.close
end

Then /^the basic dialog should not be visible$/ do
  on(BasicDialogPage).basic_dialog.should_not be_visible
end

