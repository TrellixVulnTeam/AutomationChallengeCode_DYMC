*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../PageObject/LoginPageObject.robot
Library     DataDriver
...     file=D:/AutomationChallengeCode/TestData/InValidLoginCredentials.xlsx
...     dialect=excel
Suite Setup     Open Site Browser   ${Siteurl.lg}  ${browser}  ${Title}
Suite Teardown      Close All Browsers Completely
Test Template       Invalid Login

*** Variables ***
# Assuming user already registered and have the following details
# ${The_User_Email}    test_automation_2020@test.com
# ${The_User_Password}     malta
# Using dictionary to store the site url and then using this in the Setting section
&{Siteurl}  lg=http://automationpractice.com/
${browser}  chrome

${Title}  My Store
${LoginPageTitle}   Login - My Store
${Error Message}    There is 1 error


*** Test Cases ***
Login user with email as ${Email} and password as ${Password}


*** Keywords ***
Invalid Login
    [Arguments]     ${Email}    ${Password}
    [Documentation]     Login Details is exported from the LoginPageObject
    Login Details Object   ${Email}    ${Password}     ${LoginPageTitle}
    visible sigin error message     ${Error Message}

# installed robotframework-datadriver - could not be installed
# installed robotframework-exceldatadriver
# pip install -U robotframework-datadriver[XLS]
# pip install xlrd - needed in order to use excel for the data


