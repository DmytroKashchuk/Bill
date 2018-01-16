Feature: delete client
  In order to forgot old clients and mantain the client list up to date
  As a user
  I want to delete a bill

  Background:
    Given There is client named "Mario"

  Scenario: delete bill
    Given I on "Mario" Bill details
    And I click on "add Bills"
    And there is bill "KPI"
    And I see "KPI" in the page
    When I click on "Delete"
    And I should not see "KPI"