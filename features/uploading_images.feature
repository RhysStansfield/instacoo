Feature: Uplaoding an image 
    As a user who desires the ability to share extraordinary photographs of dead cats
    In order to do so 
    I need to be able to upload photos

  Scenario: Uploading images
    Given I am signed in
    When I follow upload and add a picture
    Then I should see my picture 
