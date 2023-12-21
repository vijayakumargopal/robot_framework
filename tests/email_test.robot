*** Settings ***
Library           SeleniumLibrary
Resource           ../pages/email_page.robot
Resource           ../pages/fixtures.robot



***Test Cases ***

Test case 1 For Email Page

    [Documentation]     Type the email id and validate the label presents accordingly
    [Setup]             Test Setup For Open Browser Close Browser
    # [Teardown]          Test Teardown For Open Browser Close Browser
    [Tages]             email_page

    ##########################################################################
    # To Run this test
    # robot -d reports tests/test_email_page.robot
    ##########################################################################

    Enter Email ID  vijayakumar.gopalbanu@gmail.com
    Click Continue
    Validate Label Text  vijayakumar.gopalbanu@gmail.com
    