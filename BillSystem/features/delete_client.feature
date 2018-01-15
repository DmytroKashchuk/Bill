Feature: delete client
  In order to forgot old clients and mantain the client list up to date
  As a user
  I want to delete a client

  Backgroud:
    I have Client "Mario"

  Scenario: delete client
    Given I am on list "Clients"
    When I click on "Destroy"
    And I confirm the popup
    Then I am on the page "Clients"
    And I should not see "Mario on the list "Clients"