*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${checkout_button}      css=[data-test="checkout"]


*** Keywords ***
Visit Checkout
    Wait Until Element Is Visible    ${checkout_button}
    Click Button    ${checkout_button}
