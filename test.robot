*** Settings ***
Library    SeleniumLibrary
Library    String
Resource   ../keywords/shareHoldersKeywords.robot
Test Teardown   Close All Browsers

*** Test Cases ***

Testcase 1
    Given I went to the Sleek SG "Home" page
    When I click on the "Pricing" link
    Then I should be navigated to the Sleek SG "Pricing" page

Testcase 2
    Given I am on the Sleek SG "Pricing" page
    When I click on section "corporate-secretary"
    And Wait Until Page Contains   Effortless company secretary services in Singapore
    Then I choose "2 Shareholders" and the price is "S$360/year"
    Then I choose "6 - 9 Shareholders" and the price is "S$540/year"
    Then I choose ">30 Shareholders" and the price is "S$1,140/year"



















