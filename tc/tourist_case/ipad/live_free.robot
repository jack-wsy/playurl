*** Settings ***
Library  pylib.playUrlApi.PlayUrl  ${tourist_header}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  LIVE_FREE  id_save=tourist_ipad_live_free_contId
Resource  rflib/tempparam.robot
Force Tags  live_free

*** Test Cases ***
tourist-get-playurl-live-free-480P
    [Documentation]  游客播放直播免费节目-480P
    ${result}  get playurl  ${tourist_ipad_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_FREE  480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-live-free-540P
    [Documentation]  游客播放直播免费节目-540P
    ${result}  get playurl  ${tourist_ipad_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_FREE  540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-live-free-720P
    [Documentation]  游客播放直播免费节目-720P
    ${result}  get playurl  ${tourist_ipad_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_FREE  720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-live-free-1080P
    [Documentation]  游客播放直播免费节目-1080P
    ${result}  get playurl  ${tourist_ipad_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_FREE  1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

# 直播没有50帧
tourist-get-playurl-live-free-50-original_painting
    [Documentation]  游客播放直播免费节目-1080P
    ${result}  get playurl  ${tourist_ipad_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_FREE  50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
