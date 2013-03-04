Feature: Using the menus widget

  Background:
    Given I am on the menus page

  Scenario: Using the menu widget
    When I select the "Delphi" menu option
    Then I should see the inactive option "Ada"
    And I should see the "Saarland" option
    And I should see the "Salzburg" option