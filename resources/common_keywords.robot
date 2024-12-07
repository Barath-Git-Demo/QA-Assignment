*** Settings ***
Library           SeleniumLibrary
Resource    ../resources/locators.robot

*** Keywords ***

# Open Browser to Specific URL
Open Browser To URL
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10
    Wait Until Page Contains Element    //body

# Login to GitHub
Login To GitHub
    [Arguments]    ${username}    ${password}
    Input Text     ${USERNAME_INPUT}    ${username}
    Input Text     ${PASSWORD_INPUT}    ${password}
    Click Button   ${LOGIN_BUTTON}

# Logout to GitHub
Logout From GitHub
    [Documentation]    Log out from GitHub.
    Click Element    ${PROFILE_MENU}
    Wait Until Element Is Visible    ${LOGOUT_BUTTON}    timeout=5
    Click Element    ${LOGOUT_BUTTON}
    Click Element    xpath://input[@value='Sign out']
    Go To            https://github.com/login
    Wait Until Page Contains Element    xpath=//h1[contains(text(), "Sign in to GitHub")]    timeout=5

Valid Assertion
    Wait Until Page Contains Element    //span[contains(text(), 'Dashboard')]

Invalid Assertion
    Wait Until Page Contains Element    //div[contains(text(), 'Incorrect username or password.')]
# Create Repository

Create New Repository
    [Arguments]    ${repo_name}    ${is_private}=False
    Go To    ${REPOSITORY_PAGE}
    Sleep    3
    Input Text             ${REPO_NAME_INPUT}    ${repo_name}
    IF    ${is_private} == True
        Select Radio Button    visibilityGroup    private
    ELSE
        Select Radio Button    visibilityGroup    public
    END
    Sleep    5
    Click Element           ${CREATE_BUTTON}
    Sleep    5
    # Wait Until Page Contains Element    ${REPO_SUCCESS_HEADER}

# Navigate to Tab
Navigate To Tab
    [Arguments]    ${tab_name}
    Go To    https://github.com/${tab_name}
    Click Element    xpath://span[text()='Issues']
    Wait Until Page Contains    Issues

# Close Browser
Close The Browser
    Close Browser

# Take Screenshot On Failure
Take Screenshot On Failure
    [Documentation]    Capture screenshots on test failure.
    [Arguments]        ${test_name}
    Capture Page Screenshot    ${OUTPUTDIR}/screenshots/${test_name}.png

