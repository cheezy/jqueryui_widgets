Given /^I am on the accordion page$/ do
  visit AccordionPage
end

When /^I select the "([^"]*)" accordion element$/ do |label|
  on(AccordionPage).accordion.select label
end

Then /^the current accordion element should be "([^"]*)"$/ do |label|
  on(AccordionPage).accordion.selected.should == label
end

Then /^the accordion labels should include "([^"]*)"$/ do |label|
  on(AccordionPage).accordion.labels.should include label
end

Then /^the "([^"]*)" element should be selected$/ do |label|
  on(AccordionPage).accordion.selected?(label).should be_true
end

When /^the "([^"]*)" element should not be selected$/ do |label|
  on(AccordionPage).accordion.selected?(label).should be_false
end