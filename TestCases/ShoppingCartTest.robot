*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/ShoppingKeywords.robot
Resource    ../Resources/LoginKeywords.robot
Resource    ../Variables/Variables.robot
Resource    ../Resources/Generalkeywords.robot

Suite Setup         Open Site Browser   ${SiteUrl.lg}  ${Browser}  ${Title}
Suite Teardown      Close All Browsers Completely

*** Test Cases ***
Shopping Cart Test
    Shopping Cart

*** Keywords ***
Shopping Cart
    set selenium speed  1
    Search for black dress
    Add an item
    Add another item
    Proceed to checkout Items
    Change quantity of an item
    Remove an item
    Proceed to checkout



