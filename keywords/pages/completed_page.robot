*** Variables ***
${completed_tab}            xpath=//a[@href="#completed"]/span
${completed_button}         xpath=//div[@id="completed"]//button[@class="mdl-button mdl-js-button mdl-js-ripple-effect delete"]

*** Keywords ***
Choose completed tab
    SeleniumLibrary.Wait until element is visible   ${completed_tab}
    SeleniumLibrary.Click element                   ${completed_tab}

Clear completed
    SeleniumLibrary.Wait until element is visible   ${completed_button}
    SeleniumLibrary.Click element                   ${completed_button}

Clear completed all
    FOR     ${index}        IN RANGE         ${list}
    ${status}        Run Keyword And Return Status    Page Should Contain Element     ${completed_button}
    Run keyword if      ${status}==${True}            SeleniumLibrary.Click element                           ${completed_button}
    Exit For Loop If    ${status}==${False}
    END

Validate clear completed
    Page Should Not Contain Element     ${completed_button}