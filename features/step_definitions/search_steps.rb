Given (/^I am on the Google search page$/) do
  @driver.get "http://google.com"
end

When (/^I fill in "(.*)" found by "(.*)" with "(.*)"$/) do |value, type, keys|
  @element = @driver.find_element(type, value)
  @element.send_keys keys
end

When (/^I submit$/) do
  @element.submit
end

Then (/^the page title should start with "(.*)"$/) do |result|
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { @driver.title.downcase.start_with? result }
end
