Feature: delete client
  In order to forgot old clients and mantain the client list up to date
  As a user
  I want to delete a bill

  Backgroud:
    I have the bill "KPI"

  Scenario: delete bill
    Given I am on page of "Mario"
    And i see "KPI" on the page
    When I click on "Delete"
    And I confirm the popup
    Then I am on the page of "Mario"
    And I should not see "KPI" on the page of "Mario"