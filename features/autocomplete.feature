Feature: Using the JQueryUI Autocomplete widget

  Background:
    Given I am on the autocomplete page

  Scenario: Entering a letter
    When I enter "b" in the autocomplete widget
    Then I should see that each item in the autocomplete list contains "b"

  Scenario: Selecting an option
    When I enter "b" in the autocomplete widget
    Then I should be able to select "Ruby" from the autocomplete list