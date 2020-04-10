*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  miniprogram  id_save=not_member_miniprogram
...  AND  handle data  not_member_header  terminalId=${not_member_miniprogram}  &{not_member_user}
Force Tags  MINI_PROGRAM