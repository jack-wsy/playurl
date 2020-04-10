*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  miniprogram  id_save=member_miniprogram
...  AND  handle data  member_header  terminalId=${member_miniprogram}  &{member_user}
Force Tags  MINI_PROGRAM