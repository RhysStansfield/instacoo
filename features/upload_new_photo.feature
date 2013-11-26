Feature: Uploading photos 

  Scenario: Upload a New Photo 
    Given I am signed in 
    When I follow "Upload" 
    And I attach a file "devesh.jpg"
    And I click_button "Add Image"
    Then I should see the image

  Scenario: Photo validations
    Given I am signed in
    When I attach a photo without a description
    Then I should see an error message
    