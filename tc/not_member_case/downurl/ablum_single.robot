*** Settings ***
Library  pylib.downloadurl.DownLoadUrl  ${not_member_user}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  ABLUM_SINGLE  id_save=not_member_downurl_ablum_single_contId
Resource  rflib/tempparam.robot
Force Tags  ablum_single

*** Test Cases ***
not_member-get-downurl-ablum-single-480P
    [Documentation]  非会员下载专辑单集节目-480P
    ${result}  get downurl  ${not_member_downurl_ablum_single_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  ABLUM_SINGLE  DOWN_480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-downurl-ablum-single-540P
    [Documentation]  非会员下载专辑单集节目-540P
    ${result}  get downurl  ${not_member_downurl_ablum_single_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  ABLUM_SINGLE  DOWN_540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-downurl-ablum-single-720P
    [Documentation]  非会员下载专辑单集节目-720P
    ${result}  get downurl  ${not_member_downurl_ablum_single_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  ABLUM_SINGLE  DOWN_720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-downurl-ablum-single-1080P
    [Documentation]  非会员下载专辑单集节目-1080P
    ${result}  get downurl  ${not_member_downurl_ablum_single_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  ABLUM_SINGLE  DOWN_1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

# 专辑单集节目 无50帧
not_member-get-downurl-ablum-single-50-original_painting
    [Documentation]  非会员下载专辑单集节目-原画50帧 1080P
    ${result}  get downurl  ${not_member_downurl_ablum_single_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  ABLUM_SINGLE  DOWN_50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
