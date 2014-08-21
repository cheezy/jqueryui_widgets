Given(/^I am on the datepicker page$/) do
  visit DatepickerPage
end

When(/^I select day "(\d+)"$/) do |day|
  on(DatepickerPage).datepicker_one_select_day day
end

Then(/^the date should be "([^\"]*)"$/) do |day|
  #on(DatepickerPage).datepicker_one.should == day
  expect(on(DatepickerPage).datepicker_one).to eql day
end

When(/^I enter the date "([^\"]*)"$/) do |date|
  on(DatepickerPage).datepicker_one = date
end

When(/^I click on the Previous Month arrow$/) do
  on(DatepickerPage).datepicker_one_previous_month
end

Then(/^the day should be "(\d*)" the month should be "(\w+)" and the year should be "(\d+)"$/) do |day, month, year|
  on(DatepickerPage) do |page|
    expect(page.datepicker_one_day).to eql day unless page.datepicker_one_day == nil
    expect(page.datepicker_one_month).to eql month
    expect(page.datepicker_one_year).to eql year
  end
end

When(/^I click on the Next Month arrow$/) do
  on(DatepickerPage).datepicker_one_next_month
end

When(/^I enter the date "([^\"]*)" in the second date picker$/) do |date|
  on(DatepickerPage).datepicker_two = date
end

Then(/^the date of the second datepicker should be "([^\"]*)"$/) do |date|
  expect(on(DatepickerPage).datepicker_two).to eql date
end