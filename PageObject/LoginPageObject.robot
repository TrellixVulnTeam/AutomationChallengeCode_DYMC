*** Settings ***
Resource    ../Resources/LoginKeywords.robot

*** Keywords ***
Login Details Object
    [Arguments]     ${Email}     ${Password}    ${CurrentPageTitle}
    set selenium speed  1
    Click Sigin Link
    Verify Page Title   ${CurrentPageTitle}
    sleep   3
    Enter UserEmail  ${Email}
    Enter UserPassword  ${Password}
    Click Signin Button