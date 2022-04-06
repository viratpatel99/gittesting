*** Settings ***
Resource    ../resources/DemoTestRecource.robot

Suite Setup    Run Keywords        Open Demo Web Shop Website
Suite Teardown    Run Keywords        Close All Browsers

*** Test Cases ***
Verify that the user is able to see and access the "BOOKS" menu from navigation bar.
    [Tags]    DEMO_TEST_001        Pratice
    Navigate to Books Tab
    Page Should Contain        ${BooksPageLabel}
    Sleep    5s

Verify that the user is able to see and access the "COMPUTERS" menu from navigation bar.
    [Tags]    DEMO_TEST_002        Pratice
    Click Element        ${ComputersTab}
    Page Should Contain        Computers
    Sleep     5s


Verify that the user is able to see and access the "ELECTRONICS" menu from navigation bar.
    [Tags]    DEMO_TEST_003        Pratice
    Click Element 	 ${ElectronicsTab}
    Page Should Contain    Electronics
    Sleep    5s


Verify that the user is able to see and access the "APPAREL & SHOES" menu from navigation bar.
    [Tags]    DEMO_TEST_004        Pratice   
    Click Element     ${Apparel&ShoesTab}
    Page Should Contain    Apparel & Shoes
    Sleep    5s

Verify that the user is able to see and access the "DIGITAL DOWNLOADS" menu from navigation bar.
    [Tags]    DEMO_TEST_005        Pratice   
    Click Element    ${DigitalDawnloadTab}
    Page Should Contain    Digital downloads
    Sleep    5s

Verify that the user is able to see and access the "JEWELRY" menu from navigation bar.
    [Tags]    DEMO_TEST_006        Pratice   
    Click Element     ${JewelryTab}
    Page Should Contain    Jewelry
    Sleep    5s


Verify that the user is able to see and access the "GIFT CARDS" menu from navigation bar.
    [Tags]    DEMO_TEST_007        Pratice   
    Click Element     ${GiftcardTab}
    Page Should Contain    Gift Cards
    Sleep    5s
