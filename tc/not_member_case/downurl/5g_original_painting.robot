*** Settings ***
Library  pylib.downloadurl.DownLoadUrl  ${not_member_user}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  5G_ORIGINAL_PAINTING  id_save=not_member_downurl_5g_original_painting_contId
Resource  rflib/tempparam.robot
Force Tags  5g-original-painting

*** Test Cases ***
not_member-get-downurl-5g-original-painting-480P
    [Documentation]  非会员下载5G原画节目-480P
    ${result}  get downurl  ${not_member_downurl_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  5G_ORIGINAL_PAINTING  DOWN_480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-downurl-5g-original-painting-540P
    [Documentation]  非会员下载5G原画节目-540P
    ${result}  get downurl  ${not_member_downurl_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  5G_ORIGINAL_PAINTING  DOWN_540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-downurl-5g-original-painting-720P
    [Documentation]  非会员下载5G原画节目-720P
    ${result}  get downurl  ${not_member_downurl_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  5G_ORIGINAL_PAINTING  DOWN_720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-downurl-5g-original-painting-1080P
    [Documentation]  非会员下载5G原画节目-1080P
    ${result}  get downurl  ${not_member_downurl_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  5G_ORIGINAL_PAINTING  DOWN_1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-downurl-5g-original-painting-50-original_painting
    [Documentation]  非会员下载5G原画节目-原画50帧
    ${result}  get downurl  ${not_member_downurl_5g_original_painting_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  5G_ORIGINAL_PAINTING  DOWN_50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
