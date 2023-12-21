*** Settings ***
Library             SeleniumLibrary
Resource            ../pages/email_page.robot
Resource            ../pages/password_page.robot
Resource            ../pages/fixtures.robot


*** Test Cases ***

Test Case 1
    [Documentation]    Enter a email id and validate the label presents
    
    [Setup]        Test Setup For Open Browser Close Browser
    [Teardown]     Test Teardown For Open Browser Close Browser
    [Tags]         password_page

    ########################################################################
    # To Run This Test
    # robot tests/pasword_test.robot
    ########################################################################

    Enter Email ID   vijayakumar.gopalbanu@gmail.com 
    Click Continue
    Validate Label Text  vijayakumar.gopalbanu@gmail.com
    Enter Password  Vijay@123
    Click Login Button 

    
