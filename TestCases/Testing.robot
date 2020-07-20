# I used this file for some trouble shooting

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${Browser}  chrome
${SiteUrl}  www.automationpractice.com

*** Test Cases ***
LoginTest

    open browser    http://automationpractice.com/index.php?controller=authentication&back=my-account    chrome
    input text  name:email  test@test1111.com
    set selenium speed  2
    input text  id:passwd     12582222222222
