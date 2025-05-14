*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    inventory-item.resource


*** Variables ***
${INVENTORY_ITEM_NAME_TEMPLATE}     xpath=//div[@data-test="inventory-item-name" and normalize-space(text())="{}"]


*** Keywords ***
Add Item To Cart By Name
    [Arguments]    ${product_name}
    ${locator}=    Format String    ${INVENTORY_ITEM_NAME_TEMPLATE}    ${product_name}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}
    Add item to cart
