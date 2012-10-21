Feature: Viewing a Submission
  As a respondent
  I want to see the property I submitted
  So that I can see which resources are available

  Scenario: No response from provider
    Given I have submitted a property
    And the provider has not yet POSTed the information
    When I view the results for the submission
    Then I should see a waiting for result page

