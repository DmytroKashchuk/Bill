Feature: create a client
  In order to keep track of customers
  As a user
  I want to create a new client

  Background:
    And I am on "clients" page

  Scenario: create a valid customer
    When I click on "New client"
    And I fill in the customer name "Marco"
    Then I click on "Create Client"
    And I should see the client "Marco" in the list