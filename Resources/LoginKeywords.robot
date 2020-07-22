*** Settings ***
Library     SeleniumLibrary
Variables   ../PageElements/PageElements.py


*** Variables ***
${Title}  My Store


*** Keywords ***
# Login keywords

Open Site Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    open browser    ${SiteUrl}      ${Browser}
    maximize browser window
    Verify Page Title   ${Title}

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

Verify Page Contains
    [Arguments]     ${Should_Contain}
    page should contain    ${Should_Contain}

Close Single Browser
    close browser

Close All Browsers Completely
    close all browsers

# Validation Messages
Verify Login Is Successfull
    [Arguments]     ${Title_Is}
    title should be     ${Title_Is}

Visible Sigin Error Message
    [Arguments]     ${Error_Message}
    page should contain     ${Error_Message}