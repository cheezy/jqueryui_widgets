Given /^I am on the basic dialog page$/ do
  visit BasicDialogPage
end

Then /^the basic dialog title should be "(.+)"$/ do |title|
  on(BasicDialogPage).the_dialog_title.should == title
end

When /^the content should include "(.+)"$/ do |content|
  on(BasicDialogPage).the_dialog_content.should include content
end

When /^I close the basic dialog$/ do
  on(BasicDialogPage).close_the_dialog
end

Then /^the basic dialog should not be visible$/ do
  on(BasicDialogPage).the_dialog_element.should_not be_visible
end

