*** Settings ***
Library  SeleniumLibrary
Documentation  User Defined Keywords file

*** Keywords ***
Verify Search Results
    input text      //input[@id='gh-ac']    mobile
    click element   //input[@id='gh-btn']
    sleep   2
    page should contain     results for mobilerafi
