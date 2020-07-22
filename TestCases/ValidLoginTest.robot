*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Library     DataDriver
...     file=D:/AutomationChallengeCode/TestData/ValidLoginCredentials.xlsx
...     dialect=excel
...     sheet_name=TestData001

Suite Setup     Open Site Browser   ${SiteUrl}  ${Browser}  ${Title}
Suite Teardown      Close All Browsers Completely
Test Template      Valid Login

*** Variables ***
${Browser}      chrome
${SiteUrl}      http://automationpractice.com/
${Title}  My Store
${LoginPageTitle}   Login - My Store
${PageContains}        Welcome to your account
${UserHomePageTitle}     My account - My Store

# Assuming user already registered and have the following details
# ${The_User_Email}    test_automation_2020@test.com
# ${The_User_Password}     malta

*** Test Cases ***
Login user with email as ${Email} and password as ${Password}


*** Keywords ***
Valid Login
    [Arguments]     ${Email}     ${Password}
    set selenium speed  1
    Click Sigin Link
    Verify Page Title   ${LoginPageTitle}
    Enter UserEmail  ${Email}
    Enter UserPassword  ${Password}
    Click Signin Button
    Verify Login Is Successfull     ${UserHomePageTitle}
    verify page contains        ${PageContains}

