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

    HeaderPage.Input search text and Click search  apple phone
    SearchResultsPage.Verify Search Results  apple phone

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
