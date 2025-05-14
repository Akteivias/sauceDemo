*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://www.saucedemo.com/
${BROWSER}   chrome

*** Test Cases ***
Smoke Test Selenium Manager
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Swag Labs
    [Teardown]    Close Browser
