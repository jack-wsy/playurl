*** Settings ***
Library  pylib.downloadurl.DownLoadUrl  ${tourist_user}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  LIVE_LOOK_BACK_FREE  id_save=tourist_downurl_live_look_back_free_contId
Resource  rflib/tempparam.robot
Force Tags  live_look_back_free

*** Test Cases ***
tourist-get-downurl-live-look-back-free-480P
    [Documentation]  游客下载直播免费回看节目-480P
    ${result}  get downurl  ${tourist_downurl_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_LOOK_BACK_FREE  DOWN_480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-downurl-live-look-back-free-540P
    [Documentation]  游客下载直播免费回看节目-540P
    ${result}  get downurl  ${tourist_downurl_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_LOOK_BACK_FREE  DOWN_540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-downurl-live-look-back-free-720P
    [Documentation]  游客下载直播免费回看节目-720P
    ${result}  get downurl  ${tourist_downurl_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_LOOK_BACK_FREE  DOWN_720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-downurl-live-look-back-free-1080P
    [Documentation]  游客下载直播免费回看节目-1080P
    ${result}  get downurl  ${tourist_downurl_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_LOOK_BACK_FREE  DOWN_1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

# 直播没有50帧
tourist-get-downurl-live-look-back-free-50-original_painting
    [Documentation]  游客下载直播免费回看节目-1080P
    ${result}  get downurl  ${tourist_downurl_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  tourist_verify  TOURIST  LIVE_LOOK_BACK_FREE  DOWN_50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
