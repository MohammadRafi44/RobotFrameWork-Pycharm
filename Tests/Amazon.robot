*** Settings ***
Library  SeleniumLibrary
Documentation  Basic WebElements Automation Robot Framework
Resource  ../Resources/CommonKeywords.robot
##Resource  ../Resources/UserDefinedKeywords.robot
#Resource  ../Resources/PageObjects/HeaderPage.robot
##Resource  ../Resources/PageObjects/LandingPage.robot
##Resource  ../Resources/PageObjects/ProductDetailsPage.robot
#Resource  ../Resources/PageObjects/SearchResultsPage.robot

#Test Setup  start test case
#Test Teardown  finish test case
*** Variables ***

*** Test Cases ***
Verify basic search functionality
    [Documentation]  This test case performs the basic search
    [Tags]  Functional

    open browser  https://www.amazon.com  chrome
    sleep  3s
    set window size  697  735
    set window position  637  0
    sleep  1s
    Set Focus To Element  //input[@id='twotabsearchtextbox']
    input text  //input[@id='twotabsearchtextbox']  Apple MacBook Air
    click element  //div[@class='nav-search-submit nav-sprite']//input[@class='nav-input']
    sleep  1s
    set focus to element  //span[@class='a-size-medium a-color-base a-text-normal'][contains(text(),'Apple MacBook Air 13.3-Inch Laptop MD760LL')]
    click element  //span[@class='a-size-medium a-color-base a-text-normal'][contains(text(),'Apple MacBook Air 13.3-Inch Laptop MD760LL')]
    sleep  1s
    set focus to element  //input[@id='add-to-cart-button']
    click element  //input[@id='add-to-cart-button']
    sleep  3s
    close browser

