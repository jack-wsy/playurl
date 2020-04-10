*** Settings ***
Library  pylib.playUrlVr.PlayUrlVR  ${tourist_header}
Library  pylib/myfunction.py
Resource    rflib/tempparam.robot

*** Test Cases ***
tourist-get-playurl-VR-4K-800
    [Documentation]  游客点播VR-4K-巨幕-2D
    [Setup]  get file data  contId  VR-4K-800  id_save=vr-4k-800-contId
    ${result}  get playurl  ${vr-4k-800-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  tourist_verify  TOURIST  VR-4K-800  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-VR-4K-801
    [Documentation]  游客点播VR-4K-全景-2D
    [Setup]  get file data  contId  VR-4K-801  id_save=vr-4k-801-contId
    ${result}  get playurl  ${vr-4k-801-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  tourist_verify  TOURIST  VR-4K-801  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-VR-4K-802
    [Documentation]  游客直播VR_4K_全景2D
    [Setup]  get file data  contId  VR-4K-802  id_save=vr-4k-802-contId
    ${result}  get playurl  ${vr-4k-802-contId}  ${salt}  ${sign}  ${timestamp}  ${4k}  ${vr_true}
    ${verify_value}  get file data  tourist_verify  TOURIST  VR-4K-802  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-VR-4K-805
    [Documentation]  游客点播VR-805
    [Setup]  get file data  contId  VR-805  id_save=vr-4k-805-contId
    ${result}  get playurl  ${vr-4k-805-contId}  ${salt}  ${sign}  ${timestamp}  ${540P}  ${vr_true}
    ${verify_value}  get file data  tourist_verify  TOURIST  VR-4K-805  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-VR-4K-805-bak
    [Documentation]  游客点播VR-805-bak
    [Setup]  get file data  contId  VR-805-bak  id_save=vr-4k-805-bak-contId
    ${result}  get playurl  ${vr-4k-805-bak-contId}  ${salt}  ${sign}  ${timestamp}  ${540P}  ${vr_true}
    ${verify_value}  get file data  tourist_verify  TOURIST  VR-4K-805-bak  4K
    ${verify}  verify result  ${result}  &{verify_value}
    should be true  ${verify}