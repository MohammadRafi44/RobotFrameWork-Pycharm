*** Settings ***
Library  SeleniumLibrary
Documentation  Basic WebElements Automation Robot Framework
#Resource  ../Resources/CommonKeywords.robot
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

    open browser  https://saudi.souq.com/sa-en/  chrome
    set browser implicit wait  5
#    maximize browser window
#    sleep  3s
    set window size  697  735
    set window position  637  0


#    ${element}=    'Get WebElement'    //input[@id='search_value']
#    ${test}  'get webelement'    //input[@id='search_value']
#    Execute Javascript   ${test}
#    ...   element = arguments[0];
#    ...   original_style = element.getAttribute('style');
#    ...   element.setAttribute('style', original_style + "; background: yellow;");
#    ...   setTimeout(function(){
#    ...        element.setAttribute('style', original_style);
#    ...   }, 300);
#    Execute JavaScript  document.getElementByXpath(//input[@id='search_value']).setAttribute('style', original_style + "; background: yellow;")

#      Execute Javascript var a =  document.getElementById('ext-comp-1155').getElementsByTagName("button"); a[0].click();

#      ${lite}=  document.getElementByXpath(//input[@id='search_value']).

#      Execute Javascript  ${lite}
    scroll element into view  //a[@id='visitAmazonAe']
    click element  //a[@id='visitAmazonAe']

    scroll element into view  //input[@id='twotabsearchtextbox']
    input text  //input[@id='twotabsearchtextbox']  Mac Book
    click element  //div[@class='nav-search-submit nav-sprite']//input[@class='nav-input']

    scroll element into view  //span[contains(text(),'Apple MacBook Air MQD32 Laptop - Intel Core i5-1.8')]
    click element  //span[contains(text(),'Apple MacBook Air MQD32 Laptop - Intel Core i5-1.8')]

    scroll element into view  //input[@id='add-to-cart-button']
    click element  //input[@id='add-to-cart-button']

    sleep  2s
    close browser

*** Keywords ***
Highlight Element
    [Arguments]    ${loc}
    ${ele} =  'get webelement'  ${loc}
    Execute Javascript   ${ele}
    ...   element = arguments[0];
    ...   original_style = element.getAttribute('style');
    ...   element.setAttribute('style', original_style + "; background: yellow;");
    ...   setTimeout(function(){
    ...        element.setAttribute('style', original_style);
    ...   }, 300);