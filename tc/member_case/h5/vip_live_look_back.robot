*** Settings ***
Library  pylib.playUrlH5.PlayUrlH5  ${member_header}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  VIP_LIVE_LOOK_BACK  id_save=member_h5_vip_live_look_back_contId
Resource  rflib/tempparam.robot
Force Tags  vip_live_look_back

*** Test Cases ***
member-get-playurl-vip-live-look-back-480P
    [Documentation]  会员播放VIP直播回看节目-480P
    ${result}  get playurl  ${member_h5_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  member_verify  MEMBER  H5_VIP_LIVE_LOOK_BACK  480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-vip-live-look-back-540P
    [Documentation]  会员播放VIP直播回看节目-540P
    ${result}  get playurl  ${member_h5_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  member_verify  MEMBER  H5_VIP_LIVE_LOOK_BACK  540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-vip-live-look-back-720P
    [Documentation]  会员播放VIP直播回看节目-720P
    ${result}  get playurl  ${member_h5_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  member_verify  MEMBER  H5_VIP_LIVE_LOOK_BACK  720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-vip-live-look-back-1080P
    [Documentation]  会员播放VIP直播回看节目-1080P
    ${result}  get playurl  ${member_h5_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  member_verify  MEMBER  H5_VIP_LIVE_LOOK_BACK  1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

# 直播没有50帧
member-get-playurl-vip-live-look-back-50-original_painting
    [Documentation]  会员播放VIP直播回看节目-1080P
    ${result}  get playurl  ${member_h5_vip_live_look_back_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  member_verify  MEMBER  H5_VIP_LIVE_LOOK_BACK  50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
