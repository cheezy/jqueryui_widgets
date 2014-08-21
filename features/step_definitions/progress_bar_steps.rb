Given /^I am on the Progress Bar page$/ do
  visit_page ProgressBarPage
end

Then /^the minimum value should be "(.+)"$/ do |minimum_value|
  expect(on(ProgressBarPage).the_progress_min).to eql minimum_value.to_i
end

Then /^the maximum value should be "(.+)"$/ do |maximum_value|
  expect(on(ProgressBarPage).the_progress_max).to eql maximum_value.to_i
end

Then /^the current value should be "(.+)"$/ do |current_value|
  expect(on(ProgressBarPage).the_progress).to eql current_value.to_i
end