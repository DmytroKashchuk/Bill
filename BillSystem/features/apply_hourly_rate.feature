Feature: add hourly tariff to a client
  In order to apply an hourly rate different for each client
  As a user
  I want to add a Hourtariff

  Scenario: add the Hourtariff
    Given there is a list of clients
    And I am viewing the list of clients
    When I click on "Edit"
    And I insert the Hourtafiff "32"
    And I click on "Update Client"
    Then I am on the page of clients
    And there is a client with Hourtariff "32"
