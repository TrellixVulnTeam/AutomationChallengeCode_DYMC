*** Settings ***
Library     SeleniumLibrary
Variables   ../PageElements/PageElements.py

*** Keywords ***
# Login keywords
Click Sigin Link
    click link                  ${Signin_Link}

Enter UserEmail
    [Arguments]                 ${Email}
    input text                  ${UserEmailAddress}     ${Email}

Enter UserPassword
    [Arguments]                 ${Password}
    input text                  ${UserPassword}     ${Password}

Click Signin Button
    click button                ${SigninButton}

Verify Page Title
    [Arguments]                 ${PageTitle}
    title should be             ${PageTitle}

Verify Page Contains
    [Arguments]                 ${ShouldContain}
    page should contain         ${ShouldContain}

# Validation Messages
Verify Login Is Successfull
    [Arguments]                 ${TitleIs}
    title should be             ${TitleIs}

Visible Sigin Error Message
    [Arguments]                 ${ErrorMessage}
    page should contain         ${ErrorMessage}