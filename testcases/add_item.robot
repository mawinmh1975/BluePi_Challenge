***Settings***
Resource    ${CURDIR}/../keywords/imports.robot

Test setup        Open some website
#Test teardown     Close all browsers

*** Test Cases ***

TC_01
    [Tags]        TC_01
    add_item_feature.Add item

TC_02
    [Tags]        TC_02
    add_item_feature.Add items

    #test2