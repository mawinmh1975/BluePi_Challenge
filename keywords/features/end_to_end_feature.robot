*** Settings ***
Resource    ../pages/task_page.robot
Resource    ../pages/add_item_page.robot
Resource    ../pages/completed_page.robot

***Keywords***

End to End
    add_item_page.Choose add item tab
    add_item_page.Input item
    task_page.Choose task tab
    add_item_page.Validate add
    task_page.Done 
    task_page.Validate done
    completed_page.Clear completed
    completed_page.Validate clear completed

End to End multiple
    add_item_page.Choose add item tab
    add_item_page.Input items
    task_page.Choose task tab
    add_item_page.Validate add
    task_page.Done 
    task_page.Validate done
    completed_page.Clear completed all
    completed_page.Validate clear completed