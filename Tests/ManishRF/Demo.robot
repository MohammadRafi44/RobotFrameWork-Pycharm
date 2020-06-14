*** Settings ***
Library  SeleniumLibrary
Library  String
Library  XML


*** Variables ***
${splitDone} =  rafi

*** Test Cases ***
LoginTest
    open browser  https://www.google.com  chrome
    #    open browser  https://www.google.com  chrome
    maximize browser window
    sleep  3s
    ${txt} =  get substring  ${splitDone}  2  3

#    ${splitDone} =  Get Substring  ${txt}  12  26
    log to console  ${txt}
    log  ${txt}

    close browser



*** Keywords ***
#Split Test using Get Substring keyword



