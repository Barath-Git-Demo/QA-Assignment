*** Settings ***
Library         RequestsLibrary
Resource        ../../resources/api_keywords.robot

*** Test Cases ***

# Test Creating an Issue via API
Create New Issue API
    [Documentation]    Verifies that an issue can be created in a repository using the GitHub API.
    Create Repository API    MyIssueRepoAPI    is_private=False
    Create Issue API         MyIssueRepoAPI    Test Issue Title    This is a test issue description.

# Test Fetching Issues via API
Fetch Issues API
    [Documentation]    Verifies that issues can be fetched correctly for a repository using the GitHub API.
    Create Repository API    MyIssueRepoAPI2    is_private=False
    Create Issue API         MyIssueRepoAPI2    Another Test Issue    Another description.
    Fetch Repository Details API    MyIssueRepoAPI2
