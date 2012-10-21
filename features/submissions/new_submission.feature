Feature: Submitting a Property
  As a Property Reporter
  I want to report a vacant property
  So that I can contact the correct agency
  And get some resolution on the problems

  Scenario: Processing the POST from the provider
    When the system receives a POST hook
    Then a new submission should be created

  Scenario: Returning resources for a locality
    Given there is a Mount Healthy locality
    And there is a resource for this locality
    When I submit a property in Mount Healthy
    Then I should see a contact for my locality
