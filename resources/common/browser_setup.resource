*** Settings ***
Library     SeleniumLibrary
Resource    variables.resource


*** Keywords ***
Setup Browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # Log To Console    CHROME_PREFS = ${CHROME_PREFS}
    # Log To Console    CHROME_ARGS = ${CHROME_ARGS}
    # Log To Console    BASE_URL = ${BASE_URL}
    # Log To Console    BROWSER = ${BROWSER}
    # Log To Console    USER = ${USER}
    # Log To Console    PASS = ${PASS}
    # Log To Console    options = ${options}
    # Log To Console    options.add_argument = ${options.add_argument}

    Call Method    ${options}    add_experimental_option    prefs    ${CHROME_PREFS}
    # This requires @{CHROME_ARGS} to start with $ instead of @
    # Call Method    ${options}    add_argument    ${CHROME_ARGS}

    # This requires ${CHROME_ARGS} to start with @ instead of $
    FOR    ${arg}    IN    @{CHROME_ARGS}
        Call Method    ${options}    add_argument    ${arg}
    END

    Open Browser    ${BASE_URL}    ${BROWSER}    options=${options}

    Title Should Be    Swag Labs
