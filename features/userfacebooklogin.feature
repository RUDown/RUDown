Feature: User Facebook Login
    In order to login to my account
    As a user
    I want to be able to use Facebook
    
    Scenario: User sees Facebook button
        When I am on the home page
        Then I should see the "Sign in with Facebook" button
        
    Scenario: User press "Sign in with Facebook" button
        When I press the "Sign in with Facebook" button
        Then I am logged in with Facebook
        