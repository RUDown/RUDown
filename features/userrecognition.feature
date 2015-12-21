Feature: User recognition
    In order to see my name and profile
    As a user
    I want to be able to log in
    
    Scenario: User sees sign in button
        When I am on the home page
        Then I should see the "Sign in with Facebook" button
        
    Scenario: User press "Sign in with Facebook" button
        When I press the "Sign in with Facebook" button
        Then I see my profile displayed
        