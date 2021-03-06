*** Settings ***
Library  pylib.playUrlApi.PlayUrl  ${tourist_header}
Library  pylib/myfunction.py
Suite Setup  run keyword  get file data  contId  NOT_EPISODES_SINGLE  id_save=tourist_android_not_episodes_contId
Resource  rflib/tempparam.robot
Force Tags  not_episodes_single

*** Test Cases ***
tourist-get-playurl-not-episodes-single-480P
    [Documentation]  游客播放非剧集单集节目-480P
    ${result}  get playurl  ${tourist_android_not_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${480P}
    ${verify_value}  get file data  tourist_verify  TOURIST  NOT_EPISODES_SINGLE  480P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-not-episodes-single-540P
    [Documentation]  游客播放非剧集单集节目-540P
    ${result}  get playurl  ${tourist_android_not_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${540P}
    ${verify_value}  get file data  tourist_verify  TOURIST  NOT_EPISODES_SINGLE  540P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-not-episodes-single-720P
    [Documentation]  游客播放非剧集单集节目-720P
    ${result}  get playurl  ${tourist_android_not_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${720P}
    ${verify_value}  get file data  tourist_verify  TOURIST  NOT_EPISODES_SINGLE  720P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-not-episodes-single-1080P
    [Documentation]  游客播放非剧集单集节目-原画50帧
    ${result}  get playurl  ${tourist_android_not_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${1080P}
    ${verify_value}  get file data  tourist_verify  TOURIST  NOT_EPISODES_SINGLE  1080P
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}

tourist-get-playurl-not-episodes-single-50-original_painting
    [Documentation]  游客播放非剧集单集节目-1080P
    ${result}  get playurl  ${tourist_android_not_episodes_contId}  ${salt}  ${sign}  ${timestamp}  ${original_painting}
    ${verify_value}  get file data  tourist_verify  TOURIST  NOT_EPISODES_SINGLE  50-original-painting
    ${verify}   verify result  ${result}  &{verify_value}
    should be true  ${verify}
