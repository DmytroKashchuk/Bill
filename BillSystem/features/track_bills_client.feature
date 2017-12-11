Feature: add bill to a client
  In order to keep track of all the bills of a client
  I want to add a bill

  Scenario: add a bill
    Given there is a list of clients
    And I am viewing the list of clients
    When I click on "Show bills relative this client"
    And I click on "add Bills"
    And I add Note "22"
    Then I am on the page of client
    And there is a new bill with Note "22"
