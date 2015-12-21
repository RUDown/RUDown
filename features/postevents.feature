Feature: Post events
    In order to be able to post events
    As a user
    I want see a post events button
    
    Scenario: User sees post events button
        When I am on the post page
        Then I should see the "Create Event" button
        
    Scenario: User press "Create Event" button
        When I press the "Create Event" button
        Then an event is created
        