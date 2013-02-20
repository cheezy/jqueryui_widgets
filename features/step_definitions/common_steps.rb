Then /^I should see "(.+)"$/ do |expected|
  @current_page.text.should include expected
end
