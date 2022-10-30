***Settings***
Resource    ${CURDIR}/../keywords/imports.robot

Test setup        Open some website
#Test teardown     Close all browsers

*** Test Cases ***

TC_01
    [Tags]        TC_01
    end_to_end_feature.End to end

TC_02
    [Tags]        TC_02
    end_to_end_feature.End to end multiple