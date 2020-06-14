*** Settings ***
Library  RequestsLibrary
Library  Collections
Documentation  Souq - Product Search and Adding to WatchList

*** Variables ***
${base_url}  http://restapi.demoqa.com
${city}  Delhi

*** Test Cases ***
Get_WeatherInfo
    create session  mysession  ${base_url}
    ${response} =  get request  mysession  /utilities/weather/city/${city}

    #validations
    #Status code verification
    ${status_code} =  convert to string  ${response.status_code}
    should be equal  ${status_code}  200

    #Content Should contain some value
    ${body} =  convert to string  ${response.content}
    should contain  ${body}  Delhi

    #Headers value verfication
    ${content type value} =  get from dictionary  ${response.headers}  Content-Type
    should be equal  ${content type value}  application/json




