Given /^I am on the basic dialog page$/ do
  visit BasicDialogPage
end

Then /^the basic dialog title should be "(.+)"$/ do |title|
  expect(on(BasicDialogPage).the_dialog_title).to eql title
end

When /^the content should include "(.+)"$/ do |content|
  expect(on(BasicDialogPage).the_dialog_content).to include content
end

When /^I close the basic dialog$/ do
  on(BasicDialogPage).close_the_dialog
end

Then /^the basic dialog should not be visible$/ do
  expect(on(BasicDialogPage).the_dialog_element).to_not be_visible
end

