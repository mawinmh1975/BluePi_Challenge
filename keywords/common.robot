*** Settings ***
Resource      ${CURDIR}/imports.robot


*** Keywords ***
Open some website
    SeleniumLibrary.Open browser                    ${browser['url']}    ${browser['type']}
    SeleniumLibrary.Location Should Be              ${browser['url']}
    SeleniumLibrary.Maximize browser window 

Counter
    ${temp}    Evaluate    ${num} + 1
    Set Test Variable    ${num}    ${temp}    