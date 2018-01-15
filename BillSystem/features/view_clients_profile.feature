Feature: view client profile
  In order to controll the data of the clients
  As a user
  I want to view client profile

  Scenario: view client name
    Given I am on list "Clients"
    When I click on "Show bills relative this client"
    Then I am on the page of "Mario"
    And I view a name "Mario"


    
