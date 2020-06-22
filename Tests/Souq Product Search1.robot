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
    set browser implicit wait  5
#    sleep  3s
    set window size  697  735
    set window position  28  0

    scroll element into view  //a[@id='visitAmazonAe']
    click element  //a[@id='visitAmazonAe']

    scroll element into view  //input[@id='twotabsearchtextbox']
    input text  //input[@id='twotabsearchtextbox']  Apple iPhone 11 Pro Max
    click element  //div[@class='nav-search-submit nav-sprite']//input[@class='nav-input']

    scroll element into view  //div[@class='sg-col-inner']//div[1]//div[1]//span[1]//div[1]//div[1]//div[2]//h2[1]//a[1]//span[1]
    click element  //div[@class='sg-col-inner']//div[1]//div[1]//span[1]//div[1]//div[1]//div[2]//h2[1]//a[1]//span[1]

    scroll element into view  //input[@id='add-to-cart-button']
    click element  //input[@id='add-to-cart-button']

    sleep  2s
    close browser

