Feature: Submitting a Property
  As a Property Reporter
  I want to report a vacant property
  So that I can contact the correct agency
  And get some resolution on the problems

  Scenario: Processing the POST from the provider
    When the system receives a POST hook
    Then a new submission should be created

