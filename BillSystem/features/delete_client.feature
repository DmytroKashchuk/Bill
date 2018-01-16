Feature: delete client
  In order to forgot old clients and mantain the client list up to date
  As a user
  I want to delete a client

  Background:
    Given There is client named "Mario"
    And I am on list of Clients

  Scenario: delete client
    When I click on "Destroy"
    Then I should not see "Mario"