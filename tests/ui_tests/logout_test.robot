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

Logout Github
    Logout From GitHub

