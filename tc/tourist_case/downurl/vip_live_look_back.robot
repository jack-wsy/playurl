*** Settings ***
Library  pylib.downloadurl.DownLoadUrl  ${tourist_user}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  VIP_LIVE_LOOK_BACK  id_save=tourist_downurl_vip_live_look_back_contId
Resource  rflib/tempparam.robot
Force Tags  vip_live_look_back

*** Test Cases ***
tourist-get-downurl-vip-live-look-back-480P
    [Documentation]  游客下载VIP直播回看节目-480P
    ${result}  get downurl  ${tourist_downurl_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE_LOOK_BACK  DOWN_480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-downurl-vip-live-look-back-540P
    [Documentation]  游客下载VIP直播回看节目-540P
    ${result}  get downurl  ${tourist_downurl_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE_LOOK_BACK  DOWN_540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-downurl-vip-live-look-back-720P
    [Documentation]  游客下载VIP直播回看节目-720P
    ${result}  get downurl  ${tourist_downurl_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE_LOOK_BACK  DOWN_720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-downurl-vip-live-look-back-1080P
    [Documentation]  游客下载VIP直播回看节目-1080P
    ${result}  get downurl  ${tourist_downurl_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE_LOOK_BACK  DOWN_1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

# 直播没有50帧
tourist-get-downurl-vip-live-look-back-50-original_painting
    [Documentation]  游客下载VIP直播回看节目-1080P
    ${result}  get downurl  ${tourist_downurl_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  tourist_verify  TOURIST  VIP_LIVE_LOOK_BACK  DOWN_50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
