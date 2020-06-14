*** Settings ***
Library  SeleniumLibrary
Documentation  Common Keywords file

*** Keywords ***
Start Test Case
    open browser    https://www.ebay.com/     chrome
    maximize browser window
Finish Test Case
    close browser

