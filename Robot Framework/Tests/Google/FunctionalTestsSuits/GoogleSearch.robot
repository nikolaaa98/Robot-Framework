*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${This is sample test Cases}    Google test

*** Test Cases ***
Example Test
    [Documentation]    ${This is sample test Cases}
    [Tags]    regression
    Open Browser    http://www.google.com    chrome
    # Add your test steps here
    Close Browser

*** Keywords ***
# Define your keywords here if needed
