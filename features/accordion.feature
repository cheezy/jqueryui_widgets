Feature: Using the Accordion Widget

  This feature will test using the accordion widget.

Background:
  Given I am on the accordion page


  Scenario: Getting information from the accordion
    When I select the "Section 2" accordion element
    Then I should see "Sed non urna."

  @focus
  Scenario: Selected accordion element
    When I select the "Section 3" accordion element
    Then the current accordion element should be "Section 3"

  @not_ready
  Scenario: Grabbing all scenario names
    Then the accordion labels should include "Section 1"
    And the accordion labels should include "Section 2"
    And the accordion labels should include "Section 3"
    And the accordion labels should include "Section 4"