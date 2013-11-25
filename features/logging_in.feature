Feature: Signing up, signing in and logging out
  As someone who wants to share coo photos
  In order to do so
  I need to be able to sign up

  Scenario: Signing up
    Given I visit the Sign Up page
    When I enter my details
    Then I should have a user account

  Scenario: Sigining in
    Given I 
