Feature: add client
  In order to keep track of clients in my billing system
  As a user
  I want to add a client

  Scenario: add the client name
    Given there is a list of clients
    And I am viewing the list of clients
    When I click on "New client"
    And I insert the name "Mario"
    And I click on "Create Client"
    Then I am on the page of clients
    And there is a new client with name "Mario"

    Scenario: add the client surname
      Given there is a list of clients
      And I am viewing the list of clients
      When I click on "New client"
      And I insert the surname "Rossi"
      And I click on "Create Client"
      Then I am on the page of clients
      And there is a new client with surname "Rossi"
