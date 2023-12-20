*** Settings ***
Library              SeleniumLibrary


*** Variables ***

${email_input_box}          id:username
${continue_button}          id:login-submit
${validate_email_label}     class:css-eznkzx
${password entry box}       id:password


*** Keywords ***

Enter Email ID
    [Arguments]    ${email}
    Wait Until Page Contains Element    ${email_input_box}
    Input Text     ${email_input_box}    ${email}


Click Continue
    Click Element    ${continue_button}
    Wait Until Element Is Visible    ${password entry box}    10s


Validate Label Text
    [Arguments]    ${expected_label_text}
    Wait Until Page Contains Element    ${validate_email_label}
    ${label_text}=    Get Text    ${validate_email_label}
    Should Be Equal As Strings    ${label_text}    ${expected_label_text}
