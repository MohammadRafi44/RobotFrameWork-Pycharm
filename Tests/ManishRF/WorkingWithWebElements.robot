*** Settings ***
Library  SeleniumLibrary
Documentation  Working with Web Elements

*** Variables ***

*** Test Cases ***
Get Element Attribute Test
    open browser  https://www.google.com/  chrome  alias=ChromeRCV
    maximize browser window
    sleep  3s
    ${attr} =  get element attribute  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']  class

    ${count} =  get element count  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']

    ${width}  ${height} =  get element size  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']

    'Get WebElement'  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']

    @{webelements} =  'Get WebElements'  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']

    capture element screenshot  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']

    assign id to element  name:btnK  RCVid
    page should contain element  RCVid

    element should be focused  xpath://input[@name='q']
    element should be visible  xpath://input[@name='q']

    input text  xpath://input[@name='q']  RCV Academy

    clear element text  xpath://input[@name='q']

    cover element  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']

#    element attribute value should be  name:btnk  value  Google Search

    element should be enabled  name:btnK

    element should not be visible  name:btnKRafi

    element should contain  xpath://*[@id="fsl"]/a[4]  How Search

    element should not contain  xpath://*[@id="fsl"]/a[4]  How Search Rafi

    element text should be  xpath://*[@id="fsl"]/a[4]  How Search works

    element text should not be  xpath://*[@id="fsl"]/a[4]  How Search Works Rafi

    double click element  xpath://*[@id="gb_70"]

    sleep  2s
    Go Back
    sleep  2s

    click element at coordinates  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnI']  15  10

    #element should be disabled

    close browser


