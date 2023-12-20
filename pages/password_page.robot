*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${password entry box}       id:password
${login button}             id:login-submit
${board button}             xpath://span[text()="Create new board"]



*** Keywords ***

Wait For Password Element To Be Visible

    Wait Until Element Is Visible    ${password entry box}    10s
    

Enter Password

    [Arguments]    ${password}

    Input Text    ${password entry box}    ${password}


Click Login Button 

    Click Element    ${login button}
    Wait Until Element Is Visible    ${board button}    10s
