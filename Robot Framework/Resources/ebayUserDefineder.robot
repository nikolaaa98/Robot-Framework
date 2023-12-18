*** Settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary

*** Keywords ***
Verify Search Results
    SeleniumLibrary.Input Text  xpath://*[@id="gh-ac"]  mobile
    SeleniumLibrary.Press Keys  xpath://*[@id="gh-btn"]  [Return]
    #SeleniumLibrary.Press Keys  css:#gh-btn  [RETURN]
    SeleniumLibrary.Page Should Contain  results for mobile