Feature: Using the JQueryUI Spinner Widget

  Background:
    Given I am on the spinner page

  @focus
  Scenario: Spinner enable and disable toggle
    When I click the "Toggle disable/enable" button
    Then the Spinner widget should be disabled
    When I click the "Toggle disable/enable" button
    Then the Spinner widget should be enabled