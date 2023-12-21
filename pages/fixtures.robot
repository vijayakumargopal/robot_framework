*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Library              ../python_files/read_input.py


*** Keywords ***
Test Setup For Open Browser Close Browser

    ${browser_name}=   fetch_data_from_inputs    browser
    ${portal_url}=   fetch_data_from_inputs      portal_url
    IF   "${browser_name}" == "chrome"
        ${path of driver}=   Set Variable   drivers/chromedriver.exe
    ELSE IF   "${browser_name}" == "firefox"
        ${path of driver}=   Set Variable   drivers/geckodriver.exe
    ELSE IF   "${browser_name}" == "edge"
        ${path of driver}=   Set Variable   drivers/msedgedriver.exe
    ELSE
        Fail   INVALID BROWSER NAME
    END
    Open Browser    ${portal_url}   ${browser_name}   executable_path=${path of driver}
    Maximize Browser Window


Test Teardown For Open Browser Close Browser
    Close Browser