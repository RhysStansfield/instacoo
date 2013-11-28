Feature: Having a profile
  As someone who is fascinating
  In order for me to tell everyone how fascinating I am
  I need a profile

  @sign_in
  Scenario: Viewing my profile
    Given I am on the homepage
    When I click "My Profile"
    Then I should be on the profile page