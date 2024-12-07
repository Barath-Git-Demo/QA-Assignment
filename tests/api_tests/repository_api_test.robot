# *** Settings ***
# Library         RequestsLibrary

# *** Variables ***
# ${BASE_URL}     https://api.github.com
# ${TOKEN}        your_personal_access_token

# *** Test Cases ***
# Create Repository Via API
#     Create Session    github    ${BASE_URL}    headers={"Authorization": "token ${TOKEN}"}
#     ${payload}        Create Dictionary    name=MyTestRepo    private=True
#     ${response}       Post Request    github    /user/repos    json=${payload}
#     Should Be Equal As Numbers    ${response.status_code}    201
#     Log    ${response.json()}

# Fetch Repository Details
#     Create Session    github    ${BASE_URL}    headers={"Authorization": "token ${TOKEN}"}
#     ${response}       Get Request    github    /repos/your_username/MyTestRepo
#     Should Be Equal As Numbers    ${response.status_code}    200
#     Log    ${response.json()}


*** Settings ***
Library         RequestsLibrary
Resource        ../../resources/api_keywords.robot

*** Test Cases ***

# Test Creating a Public Repository via API
Create Public Repository API
    [Documentation]    Verifies that a public repository can be created using the GitHub API.
    Create Repository API    MyPublicRepoAPI    is_private=False

# Test Fetching Repository Details via API
Fetch Repository Details API
    [Documentation]    Verifies that repository details are fetched correctly using the GitHub API.
    Fetch Repository Details API    MyPublicRepoAPI

# Test Creating a Private Repository via API
Create Private Repository API
    [Documentation]    Verifies that a private repository can be created using the GitHub API.
    Create Repository API    MyPrivateRepoAPI    is_private=True
