*** Settings ***
Library  pylib.playUrlApi.PlayUrl  ${tourist_header}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  5G_ORIGINAL_PAINTING  id_save=tourist_android_5g_original_painting_contId
Resource  rflib/tempparam.robot
Force Tags  5g-original-painting

*** Test Cases ***
tourist-get-playurl-5g-original-painting-480P
    [Documentation]  游客播放5G原画节目-480P
    ${result}  get playurl  ${tourist_android_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  tourist_verify  TOURIST  5G_ORIGINAL_PAINTING  480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-5g-original-painting-540P
    [Documentation]  游客播放5G原画节目-540P
    ${result}  get playurl  ${tourist_android_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  tourist_verify  TOURIST  5G_ORIGINAL_PAINTING  540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-5g-original-painting-720P
    [Documentation]  游客播放5G原画节目-720P
    ${result}  get playurl  ${tourist_android_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  tourist_verify  TOURIST  5G_ORIGINAL_PAINTING  720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-5g-original-painting-1080P
    [Documentation]  游客播放5G原画节目-1080P
    ${result}  get playurl  ${tourist_android_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  tourist_verify  TOURIST  5G_ORIGINAL_PAINTING  1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-5g-original-painting-50-original_painting
    [Documentation]  游客播放5G原画节目-原画50帧
    ${result}  get playurl  ${tourist_android_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  tourist_verify  TOURIST  5G_ORIGINAL_PAINTING  50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
