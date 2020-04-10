*** Settings ***
Library  pylib.playUrlApi.PlayUrl  ${tourist_header}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  VIP_LIVE  id_save=tourist_fuyiping_vip_live_contId
Resource  rflib/tempparam.robot
Force Tags  vip_live

*** Test Cases ***
tourist-get-playurl-vip-live-480P
    [Documentation]  游客播放VIP直播节目-480P
    ${result}  get playurl  ${tourist_fuyiping_vip_live_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE  480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-vip-live-540P
    [Documentation]  游客播放VIP直播节目-540P
    ${result}  get playurl  ${tourist_fuyiping_vip_live_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE  540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-vip-live-720P
    [Documentation]  游客播放VIP直播节目-720P
    ${result}  get playurl  ${tourist_fuyiping_vip_live_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE  720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-vip-live-1080P
    [Documentation]  游客播放VIP直播节目-1080P
    ${result}  get playurl  ${tourist_fuyiping_vip_live_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE  1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

# 直播没有50帧
tourist-get-playurl-vip-live-50-original_painting
    [Documentation]  游客播放VIP直播节目-1080P
    ${result}  get playurl  ${tourist_fuyiping_vip_live_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE  50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
