Feature: Show events
    In order to be able to see events
    As a user
    I want see a an events list
    
    Scenario: User sees home button
        When I am on the home page
        Then I should see the "Home" button
    
    Scenario: User press "Home" button
        When I press the "Home" button
        Then I see the events list
        