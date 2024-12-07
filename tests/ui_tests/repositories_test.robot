*** Settings ***
Resource         ../../resources/locators.robot
Resource         ../../resources/common_keywords.robot
Test Teardown    Take Screenshot On Failure    ${TEST NAME}

*** Test Cases ***

# Test Creating a Public Repository
Create Public Repository
    Open Browser To URL    ${LOGIN_PAGE}
    Login To GitHub        Barath-Git-Demo    GithubTest@123
    Create New Repository  MyPublicRepo    is_private=False
    # Wait Until Page Contains Element    ${REPO_SUCCESS_HEADER}
    Close The Browser

# Test Creating a Private Repository
Create Private Repository
    Open Browser To URL    ${LOGIN_PAGE}
    Login To GitHub        Barath-Git-Demo    GithubTest@123
    Create New Repository  MyPrivateRepo    is_private=True
    # Wait Until Page Contains Element    ${REPO_SUCCESS_HEADER}
    Close The Browser
