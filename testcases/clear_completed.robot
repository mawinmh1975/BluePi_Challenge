***Settings***
Resource    ${CURDIR}/../keywords/imports.robot

Test setup        Open some website
#Test teardown     Close all browsers

*** Test Cases ***

TC_01
    [Tags]        TC_01
    task_feature.Clear completed task

TC_02
    [Tags]        TC_02
    task_feature.Clear completed all task