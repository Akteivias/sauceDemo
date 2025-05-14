*** Settings ***
Resource    ../ui/cart.resource
Resource    ../ui/checkout.resource


*** Keywords ***
Then visit the check out and complete the checkout process
    Visit Checkout
    Fill Checkout Info
    Finish Purchase
