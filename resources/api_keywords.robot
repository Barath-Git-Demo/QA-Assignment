*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}              https://api.github.com
${TOKEN}                 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

*** Keywords ***

# Create Repository via API
Create Repository API
    [Arguments]    ${repo_name}    ${is_private}=False
    Create Session    github    ${BASE_URL}    headers={"Authorization": "token ${TOKEN}"}
    ${payload}=    Create Dictionary    name=${repo_name}    private=${is_private}
    ${response}=    Post Request    github    /user/repos    json=${payload}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.json()}

# Fetch Repository Details via API
Fetch Repository Details API
    [Arguments]    ${repo_name}
    Create Session    github    ${BASE_URL}    headers={"Authorization": "token ${TOKEN}"}
    ${response}=    Get Request    github    /repos/your_username/${repo_name}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}

# Create Issue via API
Create Issue API
    [Arguments]    ${repo_name}    ${title}    ${body}=${EMPTY}
    Create Session    github    ${BASE_URL}    headers={"Authorization": "token ${TOKEN}"}
    ${payload}=    Create Dictionary    title=${title}    body=${body}
    ${response}=    Post Request    github    /repos/your_username/${repo_name}/issues    json=${payload}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.json()}

# Create Pull Request via API
Create Pull Request API
    [Arguments]    ${repo_name}    ${title}    ${head}    ${base}
    Create Session    github    ${BASE_URL}    headers={"Authorization": "token ${TOKEN}"}
    ${payload}=    Create Dictionary    title=${title}    head=${head}    base=${base}
    ${response}=    Post Request    github    /repos/your_username/${repo_name}/pulls    json=${payload}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.json()}
