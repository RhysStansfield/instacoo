Feature: Signing up, signing in and logging out
  As someone who wants to share coo photos
  In order to do so
  I need to be able to sign up

  Scenario: Signing up
    Given I visit the Sign Up page
    When I enter my details
    Then I should have a user account

  Scenario: Sigining in
    Given a user has signed up
    And I visit the home page
    When I press "Sign In"
    And I enter my log in details 
    Then I should see "Signed in successfully."

  Scenario: Logging out
    Given I am signed in
    When I press "Log Out"
    Then I should see "Signed out successfully."
