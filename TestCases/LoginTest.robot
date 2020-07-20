*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      http://automationpractice.com/
${Title_Of_Page}        My Store
${Page_Contains}        Welcome to your account
${Login_Page_Title}     My account - My Store

# Assuming user already registered and have the following details
${The_User_Email}    test_automation_2020@test.com
${The_User_Password}     malta


*** Test Cases ***
LoginTest
    Open Site Browser   ${SiteUrl}  ${Browser}
    set selenium speed  2
    Verify Page Title   ${Title_Of_Page}
    Click Sigin Link
    Enter UserEmail  ${The_User_Email}
    Enter UserPassword  ${The_User_Password}
    Click Signin Button
    Verify Login Is Successfull     ${Login_Page_Title}
    verify page contains        ${Page_Contains}
    close single browser

