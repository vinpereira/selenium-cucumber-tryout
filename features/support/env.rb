require 'capybara/cucumber'
require 'selenium-webdriver'  # If not using Capybara, then just this line is required

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.run_server = false

World(Capybara)
