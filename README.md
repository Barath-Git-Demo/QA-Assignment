1. Project Title and Description

Title: QA Assignment - Simplismart
Description: This project automates the testing of GitHub’s web interface and REST API using the Python Robot Framework. It includes UI and API test cases for key functionalities like login, repository management, issue tracking, and pull requests.

2. Table of Contents

    1. Project Structure
    2. Prerequisites
    3. Installation and Setup
    4. Test Cases Overview
    5. Running Tests
    6. Reporting
    7. Error Handling
    8. Future Enhancements


3. Project Structure

Simplismart Assignment/
├── tests/
│   ├── ui_tests/
│   │   ├── login_test.robot            # UI test cases for login functionality
│   │   ├── repository_test.robot       # UI test cases for repository management
│   │   ├── issue_tracking_test.robot   # UI test cases for issue tracking
│   │   └── pull_request_test.robot     # UI test cases for pull requests
│   ├── api_tests/
│   │   ├── repository_test.robot       # API test cases for repository management
│   │   ├── issue_test.robot            # API test cases for issue management
│   │   └── pull_request_test.robot     # API test cases for pull requests
│   └── resources/
│       ├── locators.robot              # UI locators for GitHub
│       ├── common_keywords.robot       # Shared keywords for UI tests
│       └── api_keywords.robot          # Shared keywords for API tests
├── reports/                            # Test execution reports (auto-generated)
├── .github/workflows/test_execution.yml # GitHub Actions configuration
├── .env                                # Environment variables (e.g., credentials, tokens)
├── README.md                           # Documentation for the project


4. Prerequisites

    1. Python 3.x installed
    2. Web browser (e.g., Google Chrome) and matching WebDriver (e.g., ChromeDriver)
    3. GitHub account with Personal Access Token (PAT)
    4. Robot Framework and required libraries
    5. Install Dependencies
    6. Install the required libraries:
    7. pip install robotframework robotframework-seleniumlibrary robotframework-requests python-dotenv


5. Installation and Setup
Provide step-by-step instructions to set up the environment:

    1. Installing dependencies with pip install.
    2. Installing and configuring web drivers for browser testing.


6. Test Cases Overview

UI Test Cases:
    1. Login: Valid and invalid scenarios.
    2. Repository Management: Create, validate, and manage repositories.
    3. Issue Tracking: Create, list, and manage issues.
    4. Pull Requests: Create, merge, and handle conflicts.
API Test Cases:
    1. Repository Management: Create and fetch repository metadata.
    2. Issue Management: Create and retrieve issues with pagination.
    3. Pull Requests: Create and validate pull requests.
    4. Run All Tests


7. Running Tests

Provide expected output and where to find the reports.    
To execute all tests (UI and API):
    1. robot --outputdir reports tests/

Run Specific Tests
To execute only UI tests:
    1. robot --outputdir reports tests/ui_tests/

To execute only API tests:
    1. robot --outputdir reports tests/api_tests/


8. Reporting

Location of test execution reports (e.g., reports/report.html, log.html).
Reports will be generated in the reports/ directory:

    1. log.html: Detailed log of test execution
    2. report.html: Summary of test results
    3. Open the report in a browser:
    4. open reports/report.html


9. Error Handling

    1. Screenshots for failed UI tests are stored in reports/screenshots/.
    2. API tests validate response status codes and error messages.

10. Future Enhancements

    1. Parameterize repository names for dynamic testing.
    2. Add browser compatibility testing.
    3. Implement performance testing for API endpoints.
    4. Include advanced GitHub features (e.g., milestones, labels).
