*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../PageObject/LoginPageObject.robot
Resource    ../Variables/Variables.robot
Resource    ../Resources/Generalkeywords.robot
Library     DataDriver
...     file=D:/AutomationChallengeCode/TestData/ValidLoginCredentials.xlsx
...     dialect=excel
...     sheet_name=TestData001
Suite Setup         Open Site Browser   ${SiteUrl.lg}  ${Browser}  ${Title}
Suite Teardown      Close All Browsers Completely
Test Template       Valid Login

*** Variables ***
# Assuming user already registered and have the following details
# ${The_User_Email}    test_automation_2020@test.com
# ${The_User_Password}     malta
# Using dictionary to store the site url and then using this in the Setting section

*** Test Cases ***
Login user with email as ${Email} and password as ${Password}


*** Keywords ***
Valid Login
    [Arguments]                     ${Email}    ${Password}
    [Documentation]                 Login Details is exported from the LoginPageObject
    Login Details Object            ${Email}    ${Password}     ${LoginPageTitle}
    Verify Login Is Successfull     ${UserHomePageTitle}
    verify page contains            ${PageContains}
# Included a sleep timer below in order to allow the window to wait so that page can be seen before closing
    sleep  10

