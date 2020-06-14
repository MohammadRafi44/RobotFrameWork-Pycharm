*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${browser}    chrome
${url}      http://spdev02:2600/login
#${url}    https://demo.nopcommerce.com/
${admin username}   233706
${admin password}   222333
${txt}  RafiShaikMohammad

*** Test Cases ***
LoginTest
#    create webdriver    chrome  executable_path="D:\Software\Selenium Chrome Driver\chromedriver_win32 (3)\chromedriver.exe"
#    open browser  https://demo.nopcommerce.com/  chrome
#    open browser    ${url}      ${browser}
#    sleep  10s
#    maximize browser window
#    input text      id:exampleInputEmail1     ${admin username}
#    input text      id:exampleInputPassword1     ${admin password}
#    click element      id:loginBtn
#    sleep  10s
#    click link      xpath://*[@id="hrms-ul"]/li[4]/a
#    sleep  2s
##    Select From List by Index    //input[@id='ddlDepartment']    2
##    Select From List by Index    //input[@id='ddlDepartment']    2
##    click link      xpath://a[contains(text(),'Checkboxes')]
##    sleep  3
##    select Checkbox     xpath://body//input[1]
##    Go Back
##    sleep  2
##    click link      xpath://a[contains(text(),'Dropdown')]
##    sleep   2
##    Select From List By Value   xpath://select[@id='dropdown']      Option 1
##    sleep   2
##    close browser
#    Click Element       xpath=//input[@id='ddlDepartment']
#    click element       //span[contains(text(),'Cardiology')]
#    Click Element       xpath=//input[@id='ddlSection']
#    click element       //span[@class='ng-option-label']
#    Click Element       xpath=//input[@id='ddlTopic']
#    click element       //span[@class='ng-option-label']
#    input text      //textarea[@placeholder='Description']      This is a Test Ticket from Testing Team.
#    click element   //button[@class='btn btn-round btn-primary']
#    sleep  3s
#    ${Ticket ID} =   Get Text      xpath://*[@id="swal2-content"]
#    log to console      ${Ticket ID}
#    log  ${Ticket ID}

    split test

*** Keywords ***
Split Test
    ${splitDone} =  Get Substring  ${txt}  4  9
    log  ${splitDone}


