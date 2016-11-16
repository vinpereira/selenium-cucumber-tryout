Feature: Google Search
    In order to test Selenium WebDriver
    As a tester
    I want to execute some Google searches

Scenario: Finding some cheese
  Given I am on the Google search page
  When I fill in "q" found by "name" with "Cheese!"
  And I submit
  Then the page title should start with "cheese"
