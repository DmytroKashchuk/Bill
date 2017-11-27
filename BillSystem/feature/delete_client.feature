Feature: delete client
  In order to forgot old clients and mantain the client list up to date
  As a user
  I want to delete a client

  Scenario: delete client
    Given there is a list of clients
    And I am viewing the list of clients
    When I click on "Destroy"
    And I click on "OK"
    Then I am on the page of clients
    And there is no ...
