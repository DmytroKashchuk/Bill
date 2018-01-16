Feature: modify client data
  In order to mantain the data of clients up to date
  As a user
  I want to edit a client



  Scenario: Edit client
    Given There is client named "Mario"
    And I am on list of Clients
    When I click on "Edit"
    And I change the "Mario" to "Luca"
    And I click on "Update Client"
    Then I should see "Luca"

  Scenario: Edit client with invalid field
    Given There is client named "Mario"
    And I am on list of Clients
    When I click on "Edit"
    And I leave name blank 
    And I click on "Update Client"
    Then I should see an error
