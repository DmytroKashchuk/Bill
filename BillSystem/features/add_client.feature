Feature: create a client
  In order to keep track of clients
  As a user
  I want to create a new client

  Background:
    And I am on "clients" page

  Scenario: create a valid client
    When I click on "New client"
    And I fill in the client name "Marco"
    Then I click on "Create Client"
    And I should see the client "Marco" in the list

  Scenario: create a not valid client
    When I click on "New client"
    And I fill in the client name ""
    Then I click on "Create Client"
    And I should see an error 