Feature: modify client data
  In order to mantain the data of clients up to date
  As a user
  I want to edit a client

  Scenario: Edit client
    Given I am on list "Clients"
    When I click on "Edit"
    And I change the "Mario" to "Luca"
    And I click on "Update Cleint"
    Then I am on the page of "Luca"

  Scenario: Name field blank
    Given I am on list "Clients"
    And I click on "Edit"
    When I leave name blank 
    And I click on "Update client"
    Then I should see an error message
