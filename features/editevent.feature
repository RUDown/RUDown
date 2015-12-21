Feature: Edit events
    In order to be able to edit events
    As a user
    I want to be able to change their information
    
    Scenario: User sees edit button
        When I am on the home page
        Then I should see the "Edit Events" button
    
    Scenario: User press "Edit Events" button
        When I press the "Edit Events" button
        Then I see the edit events options
        