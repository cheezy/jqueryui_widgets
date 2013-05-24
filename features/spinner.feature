
Feature: Using the JQueryUI Spinner Widget

  Background:
    Given I am on the spinner page

  Scenario: Adjust the spinner value with arrows
    When I click the increment button
    Then the Spinner Widget should read "1"
    When I click the decrement button
    Then the Spinner Widget should read "0"

  Scenario: Manually set the spinner value
    When I set the spinner value to "10"
    Then the Spinner Widget should read "10"
