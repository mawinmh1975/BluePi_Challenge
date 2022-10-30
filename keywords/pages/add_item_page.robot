***Variables***
${add_item_tab}        xpath=//a[@href="#add-item"]/span
${add_button}          xpath=//button[@class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored"]
${input_box}           xpath=//input[@id="new-task"]


***Keywords***
Choose add item tab             
    SeleniumLibrary.Wait until element is visible   ${add_item_tab}
    SeleniumLibrary.Click element                   ${add_item_tab}

Input item
    SeleniumLibrary.Click element        ${input_box}
    SeleniumLibrary.Input text           ${input_box}       ${item}${num} 
    SeleniumLibrary.Click element        ${add_button}

Input items
    SeleniumLibrary.Click element        ${input_box}
    FOR     ${index}        IN RANGE     ${quantity}
        SeleniumLibrary.Input text       ${input_box}       ${item}${num}
        SeleniumLibrary.Click element    ${add_button}
        common.Counter
    END

Validate add
    #Validate this can add
    task_page.Choose task tab
    Page Should Contain Element          ${task_list}