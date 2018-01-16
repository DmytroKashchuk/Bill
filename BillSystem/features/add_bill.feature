Feature: create a client
  In order to keep track of clients
  As a user
  I want to create a new client

  Background:
    Given There is client named "Mario"
    And I on "Mario" Bills Page

  Scenario: create a valid bill
    When I click on "add Bills"
    And I fill in the bill note "KPI"
    Then I click on "Create Bill"
    And I should see the bill client "KPI" in the list