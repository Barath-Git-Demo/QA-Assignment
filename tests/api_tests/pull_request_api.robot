*** Settings ***
Library         RequestsLibrary
Resource        ../../resources/api_keywords.robot

*** Test Cases ***

# Test Creating a Pull Request via API
Create New Pull Request API
    [Documentation]    Verifies that a pull request can be created using the GitHub API.
    Create Repository API    MyPullRequestRepoAPI    is_private=False
    Create Pull Request API    MyPullRequestRepoAPI    Test PR Title    main    feature-branch

# Test Fetching Pull Requests via API
Fetch Pull Requests API
    [Documentation]    Verifies that pull requests can be fetched for a repository using the GitHub API.
    Create Repository API    MyPRFetchRepoAPI    is_private=False
    Create Pull Request API    MyPRFetchRepoAPI    Fetch PR Title    main    another-feature-branch
