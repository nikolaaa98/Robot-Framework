*** Settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary

*** Keywords ***
Precondition
    Open Browser  https://www.ebay.com    chrome
    SeleniumLibrary.Maximize Browser Window

Postcondition
    Close Browser