*** Settings ***
Library     SeleniumLibrary
Variables   ../PageElements/PageElements.py

*** Keywords ***
# Login keywords
# The following keywords are self explanatory

Open Site Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    open browser    ${SiteUrl}      ${Browser}
    maximize browser window

Click Sigin Link
    click link      ${Signin_Link}

Enter UserEmail
    [Arguments]     ${Email}
    input text      ${UserEmailAddress}     ${Email}

Enter UserPassword
    [Arguments]     ${Password}
    input text      ${UserPassword}     ${Password}

Click Signin Button
    click button    ${Signin_Button}

Verify Page Title
    [Arguments]     ${Page_Title}
    title should be     ${Page_Title}

Verify Login Is Successfull
    [Arguments]     ${Title_Is}
    title should be     ${Title_Is}

Verify Page Contains
    [Arguments]     ${Should_Contain}
    page should contain    ${Should_Contain}

Close Single Browser
    close browser

Close All Browsers Completely
    close all browsers