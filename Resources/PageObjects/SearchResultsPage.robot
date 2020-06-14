*** Settings ***
Library  SeleniumLibrary
Documentation  Search Results Page Keywords file
Resource  ./HeaderPage.robot

*** Variables ***
${Search Results} =  results for

*** Keywords ***
Verify Search Results
    [arguments]  ${Search Text}
    sleep   2
    page should contain     ${Search Results} ${Search Text}

