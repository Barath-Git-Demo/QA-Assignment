*** Settings ***
Resource         ../../resources/locators.robot
Resource         ../../resources/common_keywords.robot
Test Teardown    Take Screenshot On Failure    ${TEST NAME}

*** Test Cases ***

# Test Login with Valid Credentials
Login With Valid Credentials
    Open Browser To URL    ${LOGIN_PAGE}
    Login To GitHub        ${username}    ${password}
    Valid Assertion
    Close The Browser

# Test Login with Invalid Credentials
Login With Invalid Credentials
    Open Browser To URL    ${LOGIN_PAGE}
    Login To GitHub        abc@gmail.com    abc@123
    Invalid Assertion
    Close The Browser
