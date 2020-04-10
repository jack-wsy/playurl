*** Settings ***
Library  pylib.downloadurl.DownLoadUrl  ${member_user}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  VIP_EPISODES_SINGLE  id_save=member_downurl_vip_episodes_contId
Resource  rflib/tempparam.robot
Force Tags  vip_episodes_single

*** Test Cases ***
member-get-downurl-vip-episodes-single-480P
    [Documentation]  会员下载VIP剧集单集节目-480P
    ${result}  get downurl  ${member_downurl_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  member_verify  MEMBER  VIP_EPISODES_SINGLE  DOWN_480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-downurl-vip-episodes-single-540P
    [Documentation]  会员下载VIP剧集单集节目-540P
    ${result}  get downurl  ${member_downurl_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  member_verify  MEMBER  VIP_EPISODES_SINGLE  DOWN_540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-downurl-vip-episodes-single-720P
    [Documentation]  会员下载VIP剧集单集节目-720P
    ${result}  get downurl  ${member_downurl_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  member_verify  MEMBER  VIP_EPISODES_SINGLE  DOWN_720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-downurl-vip-episodes-single-1080P
    [Documentation]  会员下载VIP剧集单集节目-1080P
    ${result}  get downurl  ${member_downurl_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  member_verify  MEMBER  VIP_EPISODES_SINGLE  DOWN_1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-downurl-vip-episodes-single-50-original_painting
    [Documentation]  会员下载VIP剧集单集节目-原画50帧
    ${result}  get downurl  ${member_downurl_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  member_verify  MEMBER  VIP_EPISODES_SINGLE  DOWN_50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
