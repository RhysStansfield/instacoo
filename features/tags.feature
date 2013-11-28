Feature: Browsing by tag
  As someone who loves browsing related stuff
  In order to see photos in a similar vein
  I need to be able to able to browse by tags, y'all

  @sign_in
  @tags_feature
  Scenario: Filtering by tag
    Given I am on the homepage
    When I click on a tag
    Then I should see all pics with that tag