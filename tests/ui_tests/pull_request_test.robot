*** Settings ***
Resource         ../../resources/locators.robot
Resource         ../../resources/common_keywords.robot
Test Teardown    Take Screenshot On Failure    ${TEST NAME}

*** Test Cases ***

# Test Creating a Pull Request
Create New Pull Request
    Open Browser To URL    ${LOGIN_PAGE}
    Login To GitHub        Barath-Git-Demo    GithubTest@123
    Navigate To Tab        Barath-Git-Demo/MyPublicRepo
    Click Element          ${PULL_REQUESTS_TAB}
    Click Element           ${NEW_PULL_REQUEST_BUTTON}
    Wait Until Page Contains    Compare changes
    Click Button           ${CREATE_PR_BUTTON}
    Wait Until Page Contains    Pull request successfully created
    Close The Browser

# Test Merging a Pull Request
Merge Pull Request
    Open Browser To URL    ${LOGIN_PAGE}
    Login To GitHub        your_username    your_password
    Navigate To Tab        Pull requests
    Wait Until Page Contains Element    ${MERGE_PR_BUTTON}
    Click Button           ${MERGE_PR_BUTTON}
    Wait Until Page Contains    Pull request successfully merged
    Close The Browser
