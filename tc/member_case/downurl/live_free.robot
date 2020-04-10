*** Settings ***
Library  pylib.downloadurl.DownLoadUrl  ${member_user}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  LIVE_FREE  id_save=member_downurl_live_free_contId
Resource  rflib/tempparam.robot
Force Tags  live_free

*** Test Cases ***
member-get-downurl-live-free-480P
    [Documentation]  会员下载直播免费节目-480P
    ${result}  get downurl  ${member_downurl_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  member_verify  MEMBER  LIVE_FREE  DOWN_480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-downurl-live-free-540P
    [Documentation]  会员下载直播免费节目-540P
    ${result}  get downurl  ${member_downurl_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  member_verify  MEMBER  LIVE_FREE  DOWN_540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-downurl-live-free-720P
    [Documentation]  会员下载直播免费节目-720P
    ${result}  get downurl  ${member_downurl_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  member_verify  MEMBER  LIVE_FREE  DOWN_720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-downurl-live-free-1080P
    [Documentation]  会员下载直播免费节目-1080P
    ${result}  get downurl  ${member_downurl_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  member_verify  MEMBER  LIVE_FREE  DOWN_1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

# 直播没有50帧
member-get-downurl-live-free-50-original_painting
    [Documentation]  会员下载直播免费节目-1080P
    ${result}  get downurl  ${member_downurl_live_free_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  member_verify  MEMBER  LIVE_FREE  DOWN_50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
