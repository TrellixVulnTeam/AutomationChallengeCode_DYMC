*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

# Suite Setup     Open Site Browser   ${SiteUrl}  ${Browser}  ${Title}
# Suite Teardown      Close All Browsers Completely
# Test Template      Valid Login

*** Variables ***
${Browser}      chrome
${SiteUrl}      http://automationpractice.com/
${Title}  My Store

*** Test Cases ***
Shopping Cart Test
    open browser    ${SiteUrl}  ${Browser}
    maximize browser window
    input text  name:search_query   black dress
    click button    name:submit_search
    sleep   0
#   ${items}=    Get Element Count  class:button ajax_add_to_cart_button btn btn-default
#   log to console      Element count is ${items}
#   select from list by label
    click button   xpath://li[1]//div[1]//div[1]//div[1]//a[2]//span[1]
    click button    name:Submit
    sleep   20