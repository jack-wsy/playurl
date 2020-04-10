*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  ipad  id_save=member_ipad
...  AND  handle data  member_header  terminalId=${member_ipad}  &{member_user}
Force Tags  IPAD