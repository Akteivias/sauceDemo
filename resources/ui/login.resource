*** Settings ***
Library     SeleniumLibrary
Resource    ../common/variables.resource


*** Variables ***
${userName_field}           css=[data-test="username"]
${password_field}           css=[data-test="password"]
${login_button}             css=[data-test="login-button"]
${inventory_container}      css=[data-test="inventory-container"]


*** Keywords ***
Login with a user
    [Arguments]    ${user}=${USER}    ${pass}=${PASS}
    Input Text    ${userName_field}    ${user}
    Input Text    ${password_field}    ${pass}
    Click Button    ${login_button}
    Wait Until Element Is Visible    ${inventory_container}
