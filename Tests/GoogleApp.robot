*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
GoogleAppTest
    open browser  https://www.google.com  chrome
    maximize browser window
    set browser implicit wait  5
#    sleep  3s
#    set window size  697  735
#    set window position  28  0
    sleep  1s
    Set Focus To Element  //input[@name='q']
    sleep  1s

#    ${width}  ${height} =  get window size
#    log  ${width}
#    log  ${height}
#
#    ${x}  ${y} =  get window position
#    log  ${x}
#    log  ${y}

#    set window size  800  600
#    set window position  100  200

    input text  //input[@name='q']  Test Automation
    sleep  1s
#    execute javascript  document.getElementById('hplogo').onclick()
    Execute JavaScript  document.getElementById('lga').click()
    sleep  1s

#    @{tttt} =  execute javascript  document.getElementsByName('btnK')

    sleep  1s
#    click element  //div[@class='FPdoLc tfB0Bf']//input[@name='btnK']
#    sleep  1s
#    click element  //a[contains(text(),'Images')]
#    sleep  2s
#    close browser
