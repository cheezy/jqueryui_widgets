Feature: Using the jqueryui_dialog BasicDialog widget

  Background:
    Given I am on the basic dialog page

  Scenario: Getting information from the page
    Then the basic dialog title should be "Basic dialog"
    And the content should include "This is the default dialog"

  Scenario: Closing the dialog
    When I close the basic dialog
    Then the basic dialog should not be visible

