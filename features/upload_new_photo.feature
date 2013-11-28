Feature: Uploading photos 


Background: Signing in 
    Given I am signed in


  Scenario: Upload a New Photo 
    When I follow "Upload" 
    And I attach a file "devesh.jpg"
    And I click button Add Image
    Then I should see the image

  Scenario: Photo validations
    When I attach a photo without a description
    Then I should see an error message
    
  Scenario: Adding tags
    When I follow "Upload"
    And I fill in "Tag list" with "#devesh #fraiche"
    And I attach a file "devesh.jpg"
    And I click button Add Image 
    Then I should see the tags
    

