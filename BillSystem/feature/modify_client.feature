Feature: modify client data
  In order to mantain the data of clients up to date
  As a user
  I want to edit a client

  Scenario: change the name of a client
    Given there is a client
    And I am viewing the details of a cleint
    When I click on "Edit"
    And I change the name to "Luca"
    And I click on "Update Cleint"
    Then I am on the page of the client
    And the name of the client is "Luca"

  Scenario: can't leave the name blank
    Given there is a client
    And I am viewing the details of a client
    When I click on "Edit"
    And I change the name to ""
    And I click on "Update Client"
    Then I should see an error
