Feature: modify client data
  In order to mantain the data of clients up to date
  As a user
  
  Background:
    I have the client "Mario"

  Scenario: I wanna see the total amount
    Given I am on the page of "Mario"
    When i see hourly rate 20
    and i see hours 10
    Then i should see TotalAmount 200 
