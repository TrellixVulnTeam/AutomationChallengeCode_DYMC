*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
Resource    ../PageObject/LoginPageObject.robot
Resource    ../Variables/Variables.robot
Resource    ../Resources/Generalkeywords.robot
# Library     DataDriver
# ...     file=../../AutomationChallengeCode/TestData/InValidLoginCredentials.xlsx
# ...     dialect=excel
Suite Setup     Open Site Browser   ${Siteurl.lg}  ${browser}  ${Title}
Suite Teardown      Close All Browsers Completely
#Test Template       Invalid Login

*** Variables ***
# Assuming user already registered and have the following details
# ${The_User_Email}    test_automation_2020@test.com
# ${The_User_Password}     malta


*** Test Cases ***
Valid email and empty password
    Invalid Login   test_automation_2020@test.com  ${EMPTY}
    visible sigin error message     Password is required

Valid email and wrong password
    Invalid Login   test_automation_2020@test.com  malta1
    visible sigin error message     Authentication failed

Empty email and correct password
    Invalid Login   ${EMPTY}  malta
    visible sigin error message     An email address required

Empty email and empty password
    Invalid Login   ${EMPTY}  ${EMPTY}
    visible sigin error message     An email address required

Empty email and wrong password
    Invalid Login   ${EMPTY}  malta2
    visible sigin error message     An email address required

Wrong email and correct password
    Invalid Login   test001_automation_2020@test.com  malta
    visible sigin error message     Authentication failed

Wrong email and empty password
    Invalid Login   test002_automation_2020@test.com  ${EMPTY}
    visible sigin error message     Password is required

Wrong email and wrong password
    Invalid Login   test002_automation_2020@test.com  malta1
    visible sigin error message     Authentication failed

# Login user with email as ${Email} and password as ${Password} -- this can be used for runing test data using excel file
# In order to view the web page as the test runs, I can introduce a timer as 'set selenium speed  1'


*** Keywords ***
Invalid Login
    [Arguments]                     ${Email}    ${Password}
    [Documentation]                 Login Details is exported from the LoginPageObject
# For the purpose of this challenge test, I introduced a timer of 1 second
#   set selenium speed              1
    Login Details Object            ${Email}    ${Password}     ${LoginPageTitle}
    visible sigin error message     ${Error Message}


