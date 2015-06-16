Feature: Provider can view their profile
  As a Provider
  I want to view my profile
  So that I can review my details

  Scenario: Viewing my profile
    Given my profile exists
    When I view my profile
    Then my details are displayed
