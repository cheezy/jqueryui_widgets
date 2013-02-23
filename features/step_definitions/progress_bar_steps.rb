Given /^I am on the Progress Bar page$/ do
  visit_page ProgressBarPage
end

Then /^the minimum value should be "(.+)"$/ do |minimum_value|
  on(ProgressBarPage).progress_bar.minimum.should == minimum_value.to_i
end

Then /^the maximum value should be "(.+)"$/ do |maximum_value|
  on(ProgressBarPage).progress_bar.maximum.should == maximum_value.to_i
end

Then /^the current value should be "(.+)"$/ do |current_value|
  on(ProgressBarPage).progress_bar.current.should == current_value.to_i
end