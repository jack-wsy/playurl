*** Settings ***
Library  pylib.playUrlH5.PlayUrlH5  ${not_member_header}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  VIP_EPISODES_SINGLE  id_save=not_member_h5_vip_episodes_contId
Resource  rflib/tempparam.robot
Force Tags  vip_episodes_single

*** Test Cases ***
not_member-get-playurl-vip-episodes-single-480P
    [Documentation]  非会员播放VIP剧集单集节目-480P
    ${result}  get playurl  ${not_member_h5_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_VIP_EPISODES_SINGLE  480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-playurl-vip-episodes-single-540P
    [Documentation]  非会员播放VIP剧集单集节目-540P
    ${result}  get playurl  ${not_member_h5_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_VIP_EPISODES_SINGLE  540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-playurl-vip-episodes-single-720P
    [Documentation]  非会员播放VIP剧集单集节目-720P
    ${result}  get playurl  ${not_member_h5_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_VIP_EPISODES_SINGLE  720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-playurl-vip-episodes-single-1080P
    [Documentation]  非会员播放VIP剧集单集节目-1080P
    ${result}  get playurl  ${not_member_h5_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_VIP_EPISODES_SINGLE  1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-playurl-vip-episodes-single-50-original_painting
    [Documentation]  非会员播放VIP剧集单集节目-原画50帧
    ${result}  get playurl  ${not_member_h5_vip_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_VIP_EPISODES_SINGLE  50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
