***Variables***
${task_tab}            xpath=//a[@href="#todo"]/span
${task_title}          xpath=//li/label[@class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect mdl-js-ripple-effect--ignore-events is-upgraded"]/span
${input_box}           xpath=//input[@id="new-task"]
${delete_button}       xpath=//button[@class="mdl-button mdl-js-button mdl-js-ripple-effect delete"]
${done_button}         xpath=//li/label/span[4]

***Keywords***
Choose task tab
    SeleniumLibrary.Wait until element is visible   ${task_tab}
    SeleniumLibrary.Click element                   ${task_tab}

Validate task
    #Validate task name
    ${value}        Get text             ${task_title}
    Should Be Equal As Strings    ${value}    ${item}${num}
Done 
    SeleniumLibrary.Wait until element is visible   ${done_button}
    SeleniumLibrary.Click element                   ${done_button}

Done all 
    FOR     ${index}        IN RANGE         ${list}
    ${status}        Run Keyword And Return Status    Page Should Contain Element     ${done_button}
    Run keyword if      ${status}==${True}            SeleniumLibrary.Click element                           ${done_button}
    Exit For Loop If    ${status}==${False}
    END
Validate done
    completed_page.Choose completed tab
    Page Should Contain Element          ${done_list}

Delete 
    SeleniumLibrary.Wait until element is visible   ${delete_button}
    SeleniumLibrary.Click element                   ${delete_button}

Delete all 
    FOR     ${index}        IN RANGE         ${list}
    ${status}        Run Keyword And Return Status    Page Should Contain Element     ${delete_button}
    Run keyword if      ${status}==${True}            SeleniumLibrary.Click element                           ${delete_button}
    Exit For Loop If    ${status}==${False}
    END

Validate delete
    Page Should Not Contain Element     ${delete_button}