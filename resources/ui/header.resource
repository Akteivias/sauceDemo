*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CART_LINK}    css=[data-test="shopping-cart-link"]


*** Keywords ***
Go To Cart
    Wait Until Element Is Visible    ${CART_LINK}
    Click Element    ${CART_LINK}
