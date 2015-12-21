Feature: Delete events
    In order to be able to delete events
    As a user
    I want to be able to delete them
    
    Scenario: User sees delete button
        When I am on the home page
        Then I should see a "Delete" button
    
    Scenario: User press "Delete" button
        When I pressed the "Delete" button
        Then I have deleted the event
        