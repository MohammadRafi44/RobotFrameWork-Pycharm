*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py
Documentation  Get Element Attribute to a variable and printing to console

*** Variables ***

*** Test Cases ***
Get Element Attribute Test
    open browser  https://www.ebay.com/  chrome
    maximize browser window
    sleep  2s
    click element  xpath://span[contains(text(),'Ship to')]
    sleep  2s
    # the below gets the text of the web element
    ${ABC} =  'Get WebElement'  xpath://*[@id="shipto-wrapper"]/div[3]/div[2]/span[2]
    sleep  1s
    log  ${ABC}
#    ${ABC} =  Get Text  xpath://*[@id="shipto-wrapper"]/div[3]/div[2]/span[2]
#    sleep  1s
#    log  ${ABC}
#    # the below gets the web element attribute (value, name, class etc)
#    ${DEF} =  Get Element Attribute  xpath://*[@id="shipto-wrapper"]/div[3]/div[2]/span[2]  class
#    sleep  1s
#    log  ${DEF}

    close browser



#Get Element Attribute