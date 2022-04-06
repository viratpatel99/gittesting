*** Settings ***
Documentation        E-Commerce website releted resource including this file.
Library    SeleniumLibrary
Library    OperatingSystem

Resource    ../locator/DemoTestLocator.robot
Resource    ../labels/DemoTestLable.robot
Resource    ../labels/DemoTestConfig.robot

*** Keywords ***
Open Demo Web Shop Website
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Input Text 	 ${UserIDtxtbox} 	 ${username}
    Sleep    5s
    Input Text 	 ${UserPassword} 	 ${password}
    Sleep    5s
    Click Element 	 ${LoginButton}

Navigate to Books Tab
    Wait Until Element Is Visible 	 ${BookTab} 	 ${StandardTimeOut}
    Click Element        ${BookTab}

Navigate to computer Tab 
    Wait Until Element Is Visible    ${ComputersPageLable}  	 ${StandardTimeOut}
    Click Element        ${ComputersPageLable} 

Navigateto ELECTRONICS Tab
    Wait Until Element Is Visible    ${ElectronicsPageLable}  	 ${StandardTimeOut}
    Click Element        ${ElectronicsPageLable}

Navigate to APPAREL & SHOES Tab
    Wait Until Element Is Visible    ${ApparelShoesPageLable}  	 ${StandardTimeOut}
    Click Element        ${ApparelShoesPageLable}

Navigate to DIGITAL DOWNLOADS Tab
    Wait Until Element Is Visible    ${DigitalDawnloadPageLable}  	 ${StandardTimeOut}
    Click Element         ${DigitalDawnloadPageLable}

navigation to JEWELRY Tab
    Wait Until Element Is Visible    ${JewelryPageLble}  	 ${StandardTimeOut}
    Click Element         ${JewelryPageLble}

navigate to GIFT CARDS Tab
    Wait Until Element Is Visible    ${GiftCardPageLable}  	 ${StandardTimeOut}
    Click Element         ${GiftCardPageLable}



    