Given /^I am on the Progress Bar page$/ do
  visit_page ProgressBarPage
end

Then /^the minimum value should be "(.+)"$/ do |minimum_value|
  on(ProgressBarPage).progress_bar.minimum.should == minimum_value.to_i
end