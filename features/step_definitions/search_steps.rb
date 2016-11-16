# Feature without Capybara
# Given (/^I am on the Google search page$/) do
#   @driver.get "http://google.com"
# end
#
# When (/^I fill in "(.*)" found by "(.*)" with "(.*)"$/) do |value, type, keys|
#   @element = @driver.find_element(type, value)
#   @element.send_keys keys
# end
#
# When (/^I submit$/) do
#   @element.submit
# end
#
# Then (/^the page title should start with "(.*)"$/) do |result|
#   wait = Selenium::WebDriver::Wait.new(:timeout => 10)
#   wait.until { @driver.title.downcase.start_with? result }
# end

# Feature with Capybara
Given (/^I am on the Google search page$/) do
  visit "http://google.com"
end

When (/^I fill in "(.*)" found by "(.*)" with "(.*)"$/) do |value, type, keys|
  fill_in value, :with => keys
end

When (/^I submit$/) do
  find(:xpath, "//button[@name='btnG']").click()
end

Then (/^the page title should start with "(.*)"$/) do |result|
  expect(page).to have_content(/result/i)
end
