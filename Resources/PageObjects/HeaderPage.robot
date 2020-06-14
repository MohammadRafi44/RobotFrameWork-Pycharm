*** Settings ***
Library  SeleniumLibrary
Variables  ../WebElements.py
Documentation  Header Page Keywords file


*** Variables ***
#${Search Text}  robot
#@{search text}  books  comics  robot  gifts
#&{Search_Text}  abc=books  bcd=comics  cde=robot  def=gifts

*** Keywords ***
Input search text and Click search
    [Arguments]  ${Search Text}
    input text  ${HomePageSearchTextBox}  ${Search Text}
    click element  ${HomePageSearchButton}


Click on Advanced search link
    click element   ${HomePageAdvancedSearchLink}

#Search for another text
#    input text      //input[@id='gh-ac']    ${Search Text}
#    click element   //input[@id='gh-btn']