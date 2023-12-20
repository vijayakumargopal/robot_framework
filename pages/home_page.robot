*** Settings ***
Library           SeleniumLibrary



*** Variables ***
${create new board button}          xpath://li[@data-testid="create-board-tile"]
${board title input box}            xpath://input[@data-testid="create-board-title-input"]
${create board button}              xpath://button[@data-testid="create-board-submit-button"]
${to do label}                      xpath://h2[text()="To Do"]
${board title header}               xpath://h1[@data-testid="board-name-display"]
${cancel button}                    xpath://button[@data-testid="list-card-composer-cancel-button"]


*** Keywords ***
Click On Create New Board 

    Click Element   ${create new board button}


Enter Board Title

    [Arguments]     ${board_title}
    Input Text      ${board title input box}     ${board_title}
    


Click On Create Board Button

    Click Element   ${create board button}
    Wait Until Element Is Visible    ${to do label}
    Click Element   ${cancel button}


Create A New Board

    [Arguments]     ${board_title}
    Click On Create New Board
    Enter Board Title       ${board_title}
    Click On Create Board Button
    ${header_presents}=     Get Text    ${board title header}
    Should Be Equal As Strings      ${header_presents}       ${board_title}


