*** Settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary
#Resource  ../../Resoucres/CommonFunctionality.robot
#Resource  ../../Resoucres/ebayUserDefineder.robot

*** Variables ***
${Return_Value}  results for mobile  

*** Test Cases ***
Verify basic Search functionality for eBay 
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional
    
    Precondition
    Verify Search Results
    Postcondition


*** Keywords ***
Verify Search Results
    SeleniumLibrary.Input Text  xpath://*[@id="gh-ac"]  mobile
    SeleniumLibrary.Press Keys  xpath://*[@id="gh-btn"]  [Return]
    #SeleniumLibrary.Press Keys  css:#gh-btn  [RETURN]
    SeleniumLibrary.Page Should Contain  ${Return_Value}

Precondition
    Open Browser  https://www.ebay.com    chrome
    SeleniumLibrary.Maximize Browser Window

Postcondition
    Close Browser