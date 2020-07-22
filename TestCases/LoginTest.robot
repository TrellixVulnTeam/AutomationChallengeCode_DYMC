*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Library     DataDriver      ../TestData/LoginCredential.xlx     sheet_name=testdata_001

Suite Setup     Open Site Browser   ${SiteUrl}  ${Browser}
Suite Teardown      Close All Browsers Completely
Test Template      Valid Login

*** Variables ***
${Browser}      chrome
${SiteUrl}      http://automationpractice.com/
${Title_Of_Page}        My Store
${Page_Contains}        Welcome to your account
${Login_Page_Title}     My account - My Store
${Error Message}

# Assuming user already registered and have the following details
${The_User_Email}    test_automation_2020@test.com
${The_User_Password}     malta

*** Test Cases ***
Invalid Login
    Common Login Details
    login not successful

Valid Login
    Common Login Details
    login successful


*** Keywords ***
Login Details
    [Arguments]     ${Email}     ${Password}
    set selenium speed  2
    Verify Page Title   ${Title_Of_Page}
    Click Sigin Link
    Enter UserEmail  ${Email}
    Enter UserPassword  ${Password}
    Click Signin Button

Login Not Successful
    visible sigin error message     ${Error Message}

Login Successful
    Verify Login Is Successfull     ${Login_Page_Title}
    verify page contains        ${Page_Contains}

