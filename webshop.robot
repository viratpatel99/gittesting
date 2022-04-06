*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${browser}    chrome
${url}    http://demowebshop.tricentis.com/register
${Reg_button}    xpath:/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[1]/a
${Gender}    xpath:/html/body/div[4]/div[1]/div[4]/div[2]/form/div/div[2]/div[2]/div[2]/div[1]/div[1]/label
${First_Name}    xpath://*[@id="FirstName"]
${First_Namevalue}        virat        
${last_name}    xpath://*[@id="LastName"]
${last_name_value}    patel   
${Email}     xpath://*[@id="Email"]
${Entered_email}    virus1#1231@gmail.com
${password}    xpath://*[@id="Password"]
${password01}    admin123456
${Confpassword}    xpath://*[@id="ConfirmPassword"]
${Registerbutton}   xpath://*[@id="register-button"]
${Click_login}    xpath:/html/body/div[4]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
${Enter_email}    xpath://*[@id="Email"] 
${Enter_password}    xpath://*[@id="Password"]
${Submit_login}    xpath:/html/body/div[4]/div[1]/div[4]/div[2]/div/div[2]/div[1]/div[2]/div[2]/form/div[5]/input


*** Keywords ***



*** Test Cases ***
Registration with login Test
    [Tags]    DEMO_TEST_001
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    Sleep    2s
    Click Element    ${Reg_button}
    Sleep    2s
    Click Element    ${Gender}
    Sleep    2s
    Input Text    ${First_Name}    ${First_Namevalue}     
    Sleep    2s
    Input Text    ${last_name}    ${last_name_value}        
    Input Text    ${Email}    ${Entered_email}
    Sleep    2s
    Input Text    ${password}        ${password01} 
    Sleep    2s
    Input Text    ${Confpassword}    ${password01} 
    Sleep    2s
    Click Element    ${Registerbutton}
    Sleep    2s
    Page Should Contain     Your registration completed
    Sleep    3s
    Click Element    ${Click_login}
    Sleep    2s
    Click Element    xpath://*[@class="ico-login"]
    Sleep    5s
    Input Text    ${Enter_email}               ${Entered_email}
    Sleep    2s
    Input Text    ${Enter_password}            ${password01}
    Sleep    2s
    Click Element    ${Submit_login}

Verify that the user is able to see and access the "BOOKS" menu from navigation bar.
    [Tags]    DEMO_TEST_002        Pratice
    Open Browser    http://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window
    Click Element        xpath:/html/body/div[4]/div[1]/div[2]/ul[1]/li[1]/a
    Page Should Contain        Books
    