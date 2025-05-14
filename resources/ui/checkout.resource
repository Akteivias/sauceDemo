*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${firstName_field}      css=[data-test="firstName"]
${lastName_field}       css=[data-test="lastName"]
${postalCode_field}     css=[data-test="postalCode"]
${continue_button}      css=[data-test="continue"]

${finish_button}        css=[data-test="finish"]


*** Keywords ***
Fill Checkout Info
    [Arguments]    ${first}=Firstname    ${last}=Lastname    ${zip}=90210
    Wait Until Page Contains Element    ${firstName_field}
    Wait Until Element Is Enabled    ${firstName_field}

    Input Text    ${firstName_field}    ${first}
    Input Text    ${lastName_field}    ${last}
    Input Text    ${postalCode_field}    ${zip}
    Click Button    ${continue_button}

Finish Purchase
    Click Button    ${finish_button}
    Wait Until Page Contains    Thank you for your order
