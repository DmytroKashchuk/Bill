Feature: Add new client
  As a user
  I want to be able to add new clients

  Scenario: Add Client name
    Given I am on list "Clients"
    And I click on "New Client"
    When I fill Client name with "Mario"
    And I click on "Create client"
    Then I should see the page of "Mario"

  Scenario: Name field blank
    Given I am on list "Clients"
    And I click on "New Client"
    When I leave name blank 
    And I click on "create client"
    Then I should see an error message