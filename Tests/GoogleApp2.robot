*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
GoogleAppTest
    open browser  https://www.google.com  chrome
    sleep  3s
    set window size  697  735
    set window position  637  0
    sleep  1s
    Set Focus To Element  //input[@name='q']
    input text  //input[@name='q']  Software Testing
    click element  //div[@class='FPdoLc tfB0Bf']//input[@name='btnK']
    sleep  1s
    click element  //a[contains(text(),'Images')]
    sleep  2s
    sleep  3s
    close browser

