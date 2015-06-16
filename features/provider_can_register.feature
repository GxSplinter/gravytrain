Feature: Provider can register
  As a Provider
  I want to register
  So that I can sell my Events

  Scenario: A Provider account is created
    Given no Providers exist
    When I am on the registration page
    And I complete the required fields
    And I submit my information
    Then my Provider account is created
    And I see a confirmation message

  Scenario: A Provider does not accept the Terms and Conditions
    Given no Providers exist
    And I am on the registration page
    And I do not accept the Terms and Conditions
    When I submit my information
    Then my account is not created
    And I am notified that I need to accept the Terms and Conditions
