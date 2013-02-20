Feature: Using the jqueryui Tab widget

  Background:
    Given I am on the tabs page

  Scenario: Using the tabs widget
    When I select the "Proin dolor" tab
    Then I should see "Morbi tincidunt, dui sit amet"
