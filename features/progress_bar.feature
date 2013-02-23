Feature: Using the progress bar

  Background:
    Given I am on the Progress Bar page
	
  Scenario: Getting the min value
    Then the minimum value should be "0"

  Scenario: Getting the max value
    Then the maximum value should be "100"