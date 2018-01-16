Feature: modify client data
  In order to mantain the data of clients up to date
  As a user
  I want to apply an tariff ti a client

  Background:
    Given There is client named "Mario"
    And I am on list of Clients

  Scenario: add tariff
    When I click on "Edit"
    And I change the "tariff" houre
    And I click on "Update Client"
    Then I should see "tariff"

  Scenario: Edit client with invalid tariff
    When I click on "Edit"
    And I leave tarif blank 
    And I click on "Update Client"
    Then I should see an error
