*** Settings ***
Resource    ../pages/task_page.robot
Resource    ../pages/add_item_page.robot
Resource    ../pages/completed_page.robot

***Keywords***
Add item
    add_item_page.Choose add item tab
    add_item_page.Input item
    task_page.Choose task tab
    add_item_page.Validate add

Add items
    add_item_page.Choose add item tab
    add_item_page.Input items
    task_page.Choose task tab
    add_item_page.Validate add

