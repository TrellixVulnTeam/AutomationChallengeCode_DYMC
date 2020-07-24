*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/ShoppingKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Variables/Variables.robot

Suite Setup     Open Site Browser   ${SiteUrl.lg}  ${Browser}  ${Title}
Suite Teardown      Close All Browsers Completely

*** Test Cases ***
Shopping Cart Test
    Shopping Cart

*** Keywords ***
Shopping Cart
    set selenium speed  1
    Search for black dress
    Add the first dress
    Add the second dress
    Proceed to checkout Items
    Change quantity of second dress
    Remove the frist dress
    Proceed to checkout
# challenges met include not element not interactable due to the fact that
# I did not involve time to wait until element is in view



