Feature: Home page
  In order to be able to see the RUDown site
  As a user
  I want see the homepage
  
  Scenario: User sees the homepage
    When I go to the homepage
    Then I should see the RUDown
    Then I am signed in with provider "facebook"
    And Page should redirect to homepage
    
  Scenario: User click on Create Event tab 
    When I click "Create Event" tab
    Then Page will redirect to Create Event page
    
  Scenario: User click on My Requests tab 
    When I click "My Requests" tab
    Then Page will redirect to My Requests page
    
  Scenario: User click on My Events
    When I click "My Events" tab
    Then Page will redirect to My Events page