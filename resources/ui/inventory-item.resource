*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${addToCart_button}     css=[data-test="add-to-cart"]


*** Keywords ***
Add item to cart
    Wait Until Page Contains Element    ${addToCart_button}
    Wait Until Element Is Enabled    ${addToCart_button}
    Click Button    ${addToCart_button}
