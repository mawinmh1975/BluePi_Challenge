*** Settings ***
Resource    ../pages/task_page.robot
Resource    ../pages/add_item_page.robot
Resource    ../pages/completed_page.robot

***Keywords***
Validate
    add_item_page.Choose add item tab
    add_item_page.Input item
    task_page.Choose task tab
    task_page.Validate task

Done task    
    add_item_page.Choose add item tab
    add_item_page.Input item
    task_page.Choose task tab
    add_item_page.Validate add
    task_page.Done 
    task_page.Validate done

Done all task   
    add_item_page.Choose add item tab
    add_item_page.Input items
    task_page.Choose task tab
    add_item_page.Validate add
    task_page.Done all 
    task_page.Validate done

Delete task   
    add_item_page.Choose add item tab
    add_item_page.Input item
    task_page.Choose task tab
    add_item_page.Validate add
    task_page.Delete 
    task_page.Validate delete

Delete all task  
    add_item_page.Choose add item tab
    add_item_page.Input items
    task_page.Choose task tab
    add_item_page.Validate add
    task_page.Delete all 
    task_page.Validate delete

Clear completed task
    add_item_page.Choose add item tab
    add_item_page.Input item
    task_page.Choose task tab
    add_item_page.Validate add
    task_page.Done 
    task_page.Validate done
    completed_page.Choose completed tab
    completed_page.Clear completed
    completed_page.Validate clear completed

Clear completed all task
    add_item_page.Choose add item tab
    add_item_page.Input items
    task_page.Choose task tab
    add_item_page.Validate add
    task_page.Done 
    task_page.Validate done
    completed_page.Choose completed tab
    completed_page.Clear completed all
    completed_page.Validate clear completed