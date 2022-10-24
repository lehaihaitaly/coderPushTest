*** Settings ***
Library    SeleniumLibrary
Library    String
Resource   ../keywords/shareHoldersKeywords.robot
Test Teardown   Close All Browsers

*** Test Cases ***

Sign up successfully
    Given I open https://sleek.com/sg/ on chrome
    When I click on section Pricing
    And Wait Until Page Contains    Corporate secretary
    Then I click on section corporate-secretary
    And Wait Until Page Contains   Effortless company secretary services in Singapore
    Then I choose 1 Shareholder and the price is S$240/year
    Then I choose 2 Shareholders and the price is S$360/year
    Then I choose 3 - 5 Shareholders and the price is S$420/year

















