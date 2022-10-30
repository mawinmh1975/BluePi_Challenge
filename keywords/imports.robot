*** Settings ***

Library        SeleniumLibrary

Resource       ${CURDIR}/common.robot
Resource       ${CURDIR}/pages/add_item_page.robot
Resource       ${CURDIR}/pages/task_page.robot
Resource       ${CURDIR}/pages/completed_page.robot
Resource       ${CURDIR}/features/add_item_feature.robot
Resource       ${CURDIR}/features/task_feature.robot
Resource       ${CURDIR}/features/end_to_end_feature.robot

Variables      ${CURDIR}/resources/testdata/testdata.yaml