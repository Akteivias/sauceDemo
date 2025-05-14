*** Settings ***
Documentation       End-to-end purchase flow on SauceDemo

Resource            ../resources/common/browser_setup.resource
Resource            ../resources/ui/login.resource
Resource            ../resources/ui/inventory.resource
Resource            ../resources/ui/header.resource
Resource            ../resources/workflows/checkout_flow.resource
Resource            ../resources/common/variables.resource
Library             SeleniumLibrary

Suite Setup         Setup Browser
Suite Teardown      Close Browser


*** Test Cases ***
Buy A Product
    ${product_name}=    Set Variable    ${DEFAULT_PRODUCT}

    Login with a user
    Add Item To Cart By Name    ${product_name}
    Go To Cart
    Then visit the check out and complete the checkout process
