Feature: view client profile
  In order to controll the data of the clients
  As a user
  I want to view client profile

  Scenario: view client profile
    Given there is a list of clients
    And I am viewing the list of clients
    When I click on "Show bills relative this client"
    Then I am on the page of client
    And I view a name
    And I view a surname
    And I view a fiscalcode
    And I view a Hourtariff
    And I view a Note
    And I view a Date
    And I view a Totalhour
    And I view a totalEuro
    And I view a Earn
