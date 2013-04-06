Feature: Using the JQueryUI Slider Widget

  Here we'll be able to get the current value of the
  Slider widget, and set a new one.

  Background:
    Given I am on the slider page

  Scenario: Using the Slider widget
    Then the current value of the slider should be "0"