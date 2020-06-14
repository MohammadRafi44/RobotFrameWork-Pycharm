*** Settings ***
Library  SeleniumLibrary
Documentation  Search Results Page Keywords file

*** Variables ***

*** Test Cases ***
Arguments Demo Keyword Test
    arguments demo keyword  rafi    shaik

Arguments Demo Keyword Test2
    arguments demo keyword  mohammad    shaik
*** Keywords ***
Arguments Demo Keyword
    [arguments]  ${arg1}    ${arg2}
    log  ${arg1}
    log  ${arg2}


