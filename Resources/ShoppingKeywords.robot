*** Settings ***
Library     SeleniumLibrary
Variables   ../PageElements/PageElements.py


*** Keywords ***
Search for black dress
    input text  ${InputSearchBox}   black dress
    click button    ${ClickSearchButton}

Add the first dress
    Mouse Over                                              xpath://li[1]//div[1]//div[1]//div[1]//a[1]//img[1]
    set selenium timeout  10
    Wait Until Element Is Visible                           xpath://li[1]//div[1]//div[2]//div[2]//a[1]//span[1]
    Scroll Element Into View                                xpath://li[1]//div[1]//div[2]//div[2]//a[1]//span[1]
    Click Element                                           xpath://li[1]//div[1]//div[2]//div[2]//a[1]//span[1]
    Wait Until Element Is Visible                           xpath://span[@class='continue btn btn-default button exclusive-medium']//span[1]
    click element                                           xpath://span[@class='continue btn btn-default button exclusive-medium']//span[1]

Add the second dress
    Mouse Over                                              xpath://li[2]//div[1]//div[1]//div[1]//a[1]//img[1]
    set selenium timeout  10
    Wait Until Element Is Visible                           xpath://li[2]//div[1]//div[2]//div[2]//a[1]//span[1]
    Scroll Element Into View                                xpath://li[2]//div[1]//div[2]//div[2]//a[1]//span[1]
    Click Element                                           xpath://li[2]//div[1]//div[2]//div[2]//a[1]//span[1]

Proceed to checkout Items
    Wait Until Element Is Visible                           xpath://span[contains(text(),'Proceed to checkout')]
    click element                                           xpath://span[contains(text(),'Proceed to checkout')]

Change quantity of second dress
    Wait Until Element is Visible                           xpath://tr[2]//td[5]//div[1]//a[2]
    click element                                           xpath://tr[2]//td[5]//div[1]//a[2]

Remove the frist dress
    Wait Until Element is Visible                           xpath://tr[1]//td[5]//div[1]//a[1]//span[1]//i[1]
    Click Element                                           xpath://tr[1]//td[5]//div[1]//a[1]//span[1]//i[1]

Proceed to checkout
    Wait Until Element is Visible                           xpath://html//body//div//div//div//div//div//p//a//span[contains(text(),'Proceed to checkout')]
    Click Element                                           xpath://html//body//div//div//div//div//div//p//a//span[contains(text(),'Proceed to checkout')]
# challenges met include element not interactable which is due to the fact that
# I did not call the keyword wait until element is visilbe
