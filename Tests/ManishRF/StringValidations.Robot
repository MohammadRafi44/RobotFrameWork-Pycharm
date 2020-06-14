*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${txt}  Reference # HRS-30052020-2

*** Test Cases ***
LoginTest
    split test using get substring keyword
    split test using split string keyword

*** Keywords ***
Split Test using Get Substring keyword
#    ${txt}  set variable  Reference # HRS-30052020-2
    ${splitDone} =  Get Substring  ${txt}  12  26
    log  ${splitDone}
    log to console  ${splitDone}

Split Test using split string keyword
    @{splitString} =  split string  ${txt}  ${SPACE}
    log  @{splitString}[0]
    log  @{splitString}[1]
    log  @{splitString}[2]

    log to console  @{splitString}[0]
    log to console  @{splitString}[1]
    log to console  @{splitString}[2]




