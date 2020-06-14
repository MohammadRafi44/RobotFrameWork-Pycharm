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
#    maximize browser window
#    sleep  3s
    set window size  697  735
    set window position  637  0
    sleep  1s

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

    Set Focus To Element  //input[@id='search_value']
    input text  //input[@id='search_value']  Mac Book
    click element  //button[@id='searchButton']
    sleep  1s
    set focus to element  //div[@class='row collapse content medium-up-1 tpl-append-results']//div[1]//div[2]//a[1]//h1[1]
    click element  //div[@class='row collapse content medium-up-1 tpl-append-results']//div[1]//div[2]//a[1]//h1[1]
    sleep  1s
    Set Focus To Element  //input[contains(@class,'cta button green-button text-center add-to-cart-button for-single-item ')]
    click element  //input[contains(@class,'cta button green-button text-center add-to-cart-button for-single-item')]
    sleep  3s
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