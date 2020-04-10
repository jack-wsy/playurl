*** Settings ***
Library  pylib.playUrlH5.PlayUrlH5  ${not_member_header}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  LIVE_LOOK_BACK_FREE  id_save=not_member_h5_live_look_back_free_contId
Resource  rflib/tempparam.robot
Force Tags  live_look_back_free

*** Test Cases ***
not_member-get-playurl-live-look-back-free-480P
    [Documentation]  非会员播放直播免费回看节目-480P
    ${result}  get playurl  ${not_member_h5_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_LIVE_LOOK_BACK_FREE  480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-playurl-live-look-back-free-540P
    [Documentation]  非会员播放直播免费回看节目-540P
    ${result}  get playurl  ${not_member_h5_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_LIVE_LOOK_BACK_FREE  540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-playurl-live-look-back-free-720P
    [Documentation]  非会员播放直播免费回看节目-720P
    ${result}  get playurl  ${not_member_h5_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_LIVE_LOOK_BACK_FREE  720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

not_member-get-playurl-live-look-back-free-1080P
    [Documentation]  非会员播放直播免费回看节目-1080P
    ${result}  get playurl  ${not_member_h5_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_LIVE_LOOK_BACK_FREE  1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

# 直播没有50帧
not_member-get-playurl-live-look-back-free-50-original_painting
    [Documentation]  非会员播放直播免费回看节目-1080P
    ${result}  get playurl  ${not_member_h5_live_look_back_free_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  not_member_verify  NOT_MEMBER  H5_LIVE_LOOK_BACK_FREE  50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
