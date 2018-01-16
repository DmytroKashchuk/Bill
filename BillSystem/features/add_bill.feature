Feature: create a client
  In order to keep track of clients
  As a user
  I want to create a new client

  Background:
    Given There is client named "Mario"

  Scenario: create a valid bill
    Given I on "Mario" Bills Page
    When I click on "add Bills"
    And I fill in the bill note "KPI"
    Then I should see the bill client "KPI" in the list

  Scenario: create a invalid bill
    Given I on "Mario" Bills Page
    When I click on "add Bills"
    And I fill in the invalid bill note
    Then I should see an invadlidation