*** Settings ***
Library  SeleniumLibrary
Documentation  Souq - Product Search and Adding to WatchList
#Resource  ../Resources/CommonKeywords.robot
#Test Setup  start test case
#Test Teardown  finish test case
*** Variables ***

*** Test Cases ***
Verify basic search functionality
    [Documentation]  This test case performs the basic search on a product
    [Tags]  Functional

    open browser  https://saudi.souq.com/sa-en/  chrome
#    sleep  3s
    set window size  697  735
    set window position  28  0
    sleep  1s
    Set Focus To Element  //input[@id='search_value']
    input text  //input[@id='search_value']  Apple iPhone 11 Pro Max
    click element  //button[@id='searchButton']
    sleep  1s
    click element  //div[@class='row collapse content medium-up-1 tpl-append-results']//div[1]//div[2]//a[1]//h1[1]
    sleep  1s
    Set Focus To Element  //input[contains(@class,'cta button green-button text-center add-to-cart-button for-single-item ')]
    click element  //input[contains(@class,'cta button green-button text-center add-to-cart-button for-single-item')]
    sleep  3s
    close browser

