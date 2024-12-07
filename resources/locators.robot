*** Variables ***
# General
${LOGIN_PAGE}                  https://github.com/login
${REPOSITORY_PAGE}             https://github.com/new

# Login Locators
${USERNAME_INPUT}              id:login_field
${PASSWORD_INPUT}              id:password
${LOGIN_BUTTON}                xpath://input[@name='commit']

# Logout Locators
${PROFILE_MENU}                xpath://img[@class='avatar circle']
${LOGOUT_BUTTON}               xpath://span[text()='Sign out']

# Repository Locators
${REPO_NAME_INPUT}             xpath://input[@id=':r5:']
${CREATE_BUTTON}               xpath://span[text()='Create repository']
${REPO_SUCCESS_HEADER}         xpath://span[text()='MyTestRepo']
# Issue Tracking Locators
${ISSUES_TAB}                  xpath://span[text()='Issues']
${NEW_ISSUE_BUTTON}            xpath://span[text()='New issue']
${ISSUE_TITLE_INPUT}           id:issue_title
${ISSUE_DESCRIPTION_INPUT}     id:issue_body
${SUBMIT_ISSUE_BUTTON}         xpath://button[contains(text(),'Submit new issue')]
${ISSUE_SUCCESS_HEADER}        xpath://span[contains(text(),'${ISSUE_TITLE_INPUT}')]

# Pull Requests Locators
${PULL_REQUESTS_TAB}           xpath:(//span[contains(text(),'Pull requests')])[2]
${NEW_PULL_REQUEST_BUTTON}     xpath://span[contains(text(),'New pull request')]
${CREATE_PR_BUTTON}            xpath://span[contains(text(),'Create pull request')]
${MERGE_PR_BUTTON}             xpath://button[contains(text(),'Merge pull request')]
