Then /^I should see "(.+)"$/ do |expected|
  expect(@current_page.text).to include expected
end
