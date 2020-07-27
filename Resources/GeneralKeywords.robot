*** Settings ***
Library     SeleniumLibrary
Variables   ../PageElements/PageElements.py

*** Keywords ***
# Login keywords
Open Site Browser
    [Arguments]                 ${SiteUrl}      ${Browser}      ${Title}
    open browser                ${SiteUrl}      ${Browser}
    maximize browser window
    Title Should be             ${Title}

Close Single Browser
    close browser

Close All Browsers Completely
    close all browsers
