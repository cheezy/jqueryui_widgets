Feature: Using the JQueryUI Datepicker widget

  Background:
    Given I am on the datepicker page


  Scenario: Selecting a calendar date
    When I enter the date "05/10/2013"
    And I select day "25"
    Then the date should be "05/25/2013"

  Scenario: Adjusting the month by arrow clicks
    When I enter the date "05/10/2013"
    Then the day should be "10" the month should be "May" and the year should be "2013"
    And I click on the Previous Month arrow
    Then the day should be "" the month should be "April" and the year should be "2013"
    And I click on the Next Month arrow
    Then the day should be "10" the month should be "May" and the year should be "2013"

  Scenario: Selecting a second date picker
    When I enter the date "05/10/2013" in the second date picker
    And I select day "25"
    Then the date of the second datepicker should be "05/25/2013"