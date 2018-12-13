*** Settings ***
Documentation     A test suite with a single test for valid shuffle.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Index Page
    Input Text    addItemText    first element
    Click Button     addItemButton
    Input Text    addItemText    second element
    Click Button     addItemButton
    Input Text    addItemText    third element
    Click Button     addItemButton
    Click Button     shuffleButton
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Index Page
    Open Browser    ${INDEX URL}    ${BROWSER}
