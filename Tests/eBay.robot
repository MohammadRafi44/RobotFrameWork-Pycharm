*** Settings ***
Library  SeleniumLibrary
Documentation  Basic WebElements Automation Robot Framework
Resource  ../Resources/CommonKeywords.robot
#Resource  ../Resources/UserDefinedKeywords.robot
Resource  ../Resources/PageObjects/HeaderPage.robot
#Resource  ../Resources/PageObjects/LandingPage.robot
#Resource  ../Resources/PageObjects/ProductDetailsPage.robot
Resource  ../Resources/PageObjects/SearchResultsPage.robot

Test Setup  start test case
Test Teardown  finish test case
*** Variables ***

*** Test Cases ***
Verify basic search functionality
    [Documentation]  This test case performs the basic search
    [Tags]  Functional

    HeaderPage.Input search text and Click search  Apple iPhone 11 Pro Max Space Gray 64GB Model A2161 BRAND NEW
    sleep  3s
#    wait until page contains element  //h3[contains(text(),'Apple iPhone 11 Pro Max Space Gray 64GB Model A216')]
#    wait until element is visible  //h3[contains(text(),'Apple iPhone 11 Pro Max Space Gray 64GB Model A216')]
    click element  //h3[contains(text(),'Apple iPhone 11 Pro Max Space Gray 64GB Model A216')]
    sleep  2s
#    wait until page contains element  //a[@id='watchLink']
#    wait until element is visible  //a[@id='watchLink']

    click element  //a[@id='watchLink']
    sleep  3s
#    SearchResultsPage.Verify Search Results  apple phone

#Verify basic search functionality1
#    [documentation]  This test case performs the basic search
#    [tags]  Functional
#
#    HeaderPage.Input search text and Click search  oneplus phone
#    SearchResultsPage.Verify Search Results  oneplus phone
#
#Verify basic search functionality2
#    [documentation]  This test case performs the basic search
#    [tags]  Functional
#
#    HeaderPage.Input search text and Click search  Iphone
#    SearchResultsPage.Verify Search Results  Iphone

#Verify advance search functionality
#    [documentation]  This test case performs the advanced search
#    [tags]  Functional
#
#    HeaderPage.Click on Advanced search link
