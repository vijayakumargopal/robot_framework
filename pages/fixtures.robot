*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Library              ../python_files/read_input.py


*** Keywords ***
Test Setup For Open Browser Close Browser

    ${browser_name}=   fetch_data_from_inputs    browser
    ${portal_url}=   fetch_data_from_inputs      portal_url
    Open Browser    ${portal_url}   ${browser_name}   executable_path=drivers/chromedriver.exe
    Maximize Browser Window


Test Teardown For Open Browser Close Browser
    Close Browser