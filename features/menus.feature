Feature: Using the menus widget

  This feature will test the ability to interact with menus and submenus.

  Background:
    Given I am on the menus page


  Scenario: Using the menu widget
    When I select the "Delphi" menu option
    Then I should see the inactive option "Delphi", "Ada"
    And I should see the "Delphi", "Saarland" option

  Scenario: Selecting submenu items
    When I select "Salzburg" and "Delphi" and "Ada"
    Then I should see the "Salzburg", "Delphi", "Ada" option

  Scenario: Should raise error when non-existing menu item is given
    Then I should have an error when I search for menu item "Taco"