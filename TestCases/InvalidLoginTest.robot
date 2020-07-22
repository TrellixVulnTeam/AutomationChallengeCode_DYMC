*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Library     DataDriver
...     file=D:/AutomationChallengeCode/TestData/LoginCredentials.xlsx
...     dialect=excel

Suite Setup     Open Site Browser   ${url}  ${browser}
Suite Teardown      Close All Browsers Completely
Test Template       Invalid Login

*** Variables ***
${url}      http://automationpractice.com/
${browser}  chrome
${LoginPageTitle}   Login - My Store
${Error Message}    There is 1 error

# Assuming user already registered and have the following details
# Email = test_automation_2020@test.com
# password =     malta

*** Test Cases ***
Login with user with email as ${Email} and password as ${Password}


*** Keywords ***
Invalid Login
    [Arguments]     ${Email}     ${Password}
    set selenium speed  0
    Click Sigin Link
    Verify Page Title   ${LoginPageTitle}
    Enter UserEmail  ${Email}
    Enter UserPassword  ${Password}
    Click Signin Button
    visible sigin error message     ${Error Message}

# installed robotframework-datadriver - could not be installed
# installed robotframework-exceldatadriver
# pip install -U robotframework-datadriver[XLS]
# pip install xlrd - needed in order to use excel for the data



