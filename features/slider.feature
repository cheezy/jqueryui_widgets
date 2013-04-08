Feature: Using the JQueryUI Slider Widget

  Here we'll be able to get the current value of the
  Slider widget, and set a new one.

  Background:
    Given I am on the slider page

  Scenario: Using the Slider widget
    Then the current value of the slider should be "0%"

  Scenario: Setting the Slider to a specific value
    When I move the slider to "10%"
    Then the current value of the slider should be "10%"