*** Settings ***
Library  pylib.playUrlVr.PlayUrlVR  ${member_header}
Library  pylib/myfunction.py
Resource    rflib/tempparam.robot

*** Test Cases ***
member-get-playurl-VR-4K-800
    [Documentation]  会员点播VR-4K-巨幕-2D
    [Setup]  get file data  contId  VR-4K-800  id_save=vr-4k-800-contId
    ${result}  get playurl  ${vr-4k-800-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  VR-4K-800  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-VR-4K-801
    [Documentation]  会员点播VR-4K-全景-2D
    [Setup]  get file data  contId  VR-4K-801  id_save=vr-4k-801-contId
    ${result}  get playurl  ${vr-4k-801-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  VR-4K-801  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-VR-4K-802
    [Documentation]  会员直播VR_4K_全景2D
    [Setup]  get file data  contId  VR-4K-802  id_save=vr-4k-802-contId
    ${result}  get playurl  ${vr-4k-802-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  VR-4K-802  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-VR-4K-805
    [Documentation]  会员点播VR-805
    [Setup]  get file data  contId  VR-805  id_save=vr-4k-805-contId
    ${result}  get playurl  ${vr-4k-805-contId}  ${salt}  ${sign}  ${timestamp}  ${540P}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  VR-4K-805  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-VR-4K-805-bak
    [Documentation]  会员点播VR-805-bak
    [Setup]  get file data  contId  VR-805-bak  id_save=vr-4k-805-bak-contId
    ${result}  get playurl  ${vr-4k-805-bak-contId}  ${salt}  ${sign}  ${timestamp}  ${540P}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  VR-4K-805-bak  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-4K-VR-180-2D
    [Documentation]  会员点播4K-VR-180-2D
    [Setup]  get file data  contId  4K-VR-180-2D  id_save=vr-4k-180-2D-contId
    ${result}  get playurl  ${vr-4k-180-2D-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  4K-VR-180-2D  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-4K-VR-180-3D-top-bottom
    [Documentation]  会员点播4K-VR-180-3D-上下
    [Setup]  get file data  contId  4K-VR-180-3D-top-bottom  id_save=vr-4K-VR-180-3D-top-bottom-contId
    ${result}  get playurl  ${vr-4K-VR-180-3D-top-bottom-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  4K-VR-180-3D-top-bottom  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-4K-VR-360-2D
    [Documentation]  会员直播4K-VR-360-2D
    [Setup]  get file data  contId  4K-VR-360-2D  id_save=vr-4K-VR-360-2D-contId
    ${result}  get playurl  ${vr-4K-VR-360-2D-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  4K-VR-360-2D  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-VR-4K-805
    [Documentation]  会员点播4K-VR-360-3D-上下
    [Setup]  get file data  contId  4K-VR-360-3D-top-bottom  id_save=vr-4K-VR-360-3D-top-bottom-contId
    ${result}  get playurl  ${vr-4K-VR-360-3D-top-bottom-contId}  ${salt}  ${sign}  ${timestamp}  ${540P}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  4K-VR-360-3D-top-bottom  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-4K-Screen-3D-top-bottom
    [Documentation]  会员点播4K-巨幕-3D-上下
    [Setup]  get file data  contId  4K-Screen-3D-top-bottom  id_save=vr-4K-Screen-3D-top-bottom-contId
    ${result}  get playurl  ${vr-4K-Screen-3D-top-bottom-contId}  ${salt}  ${sign}  ${timestamp}  ${540P}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  4K-Screen-3D-top-bottom  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

member-get-playurl-4K-Screen-3D-left-right
    [Documentation]  会员点播4K-巨幕-3D-左右
    [Setup]  get file data  contId  4K-Screen-3D-left-right  id_save=vr-4K-Screen-3D-left-right-contId
    ${result}  get playurl  ${vr-4k-805-bak-contId}  ${salt}  ${sign}  ${timestamp}  ${540P}  ${vr_true}
    ${verify_value}  get file data  member_verify  MEMBER  4K-Screen-3D-left-right  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}