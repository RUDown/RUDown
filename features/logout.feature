Feature: Logout
    In order to sign out from the website
    As a user
    I want to be able to logout
    
    Scenario: User sees logout button
        When I am on the home page
        Then I should see a "Logout" button
        
    Scenario: User press "Logout" button
        When I pressed the "Logout" button
        Then I get logged out
        