*** Settings ***
Library  SeleniumLibrary
Documentation  Passing Variables from Command Line

*** Variables ***
${url}      https://www.ebay.com
${browser}  firefox

*** Test Cases ***
command line variables test
    command line variables

*** Keywords ***
command line variables
    Open browser    ${url}  ${browser}
    maximize browser window
    sleep  2
    close browser
