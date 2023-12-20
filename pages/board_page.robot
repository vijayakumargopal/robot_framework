*** Settings ***
Library           SeleniumLibrary


*** Variables ***

${to do add card button}    xpath://h2[text()="To Do"]/ancestor::li//button[@data-testid="list-add-card-button"]
${doing add card button}    xpath://h2[text()="Doing"]/ancestor::li//button[@data-testid="list-add-card-button"]
${done add card button}     xpath://h2[text()="Done"]/ancestor::li//button[@data-testid="list-add-card-button"]
${new_card_name_entry}      xpath://textarea[@placeholder="Enter a title for this card…"]
${add_card_button}          xpath://button[text()="Add card"]
${cancel_button}            xpath://button[contains(@aria-label, "Cancel")]


*** Keywords ***

Add Card To To Do
    [Arguments]      ${card_name}
    Click Element    ${to do add card button}
    Input Text       ${new_card_name_entry}    ${card_name}
    Click Element    ${add_card_button}


Add Card To Doing
    [Arguments]      ${card_name}
    Click Element    ${doing add card button}
    Input Text       ${new_card_name_entry}    ${card_name}
    Click Element    ${add_card_button}


Add Card To Done
    [Arguments]      ${card_name}
    Click Element    ${done add card button}
    Input Text       ${new_card_name_entry}    ${card_name}
    Click Element    ${add_card_button}
