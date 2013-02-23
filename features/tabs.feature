Feature: Using the jqueryui Tab widget

  Background:
    Given I am on the tabs page

  Scenario: Using the tabs widget
    When I select the "Proin dolor" tab
    Then I should see "Morbi tincidunt, dui sit amet"

  Scenario: Selected Tab Should Be
    When I select the "Proin dolor" tab
	Then the current tab should be "Proin dolor"