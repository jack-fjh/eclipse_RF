*** Settings ***
Documentation    demo1
# Suite Setup    NONE
# Suite Teardown    NONE
# Test Setup    NONE
# Test Teardown    NONE   
# Test Template    NONE
Force Tags        test    
# Test Timeout    0.1


*** Variables ***


*** Keywords ***
testkey
    [Documentation]    实现两个数相加
    [Arguments]    ${x}    ${y}
    ${a}=        Evaluate        ${x}+${y}    
    [Return]    ${a}


*** Test Cases ***
Example1
    Log To Console    hello world
    Sleep    1
    
Example2
    Log To Console    hello
Example3
     ${x}=            Set Variable    1
     ${y}=            Set Variable    2
     ${z}=            Evaluate    ${x}+${y}
     ${a}=            testkey    10    10
     Log To Console    ${a}
    @{list}    Create List    1    2    3    4
    Log To Console    list:${list[0]}
    &{map}=    Create Dictionary    x=1    y=2
    Log To Console    map:${map['x']}
