*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  ipad  id_save=not_member_ipad
...  AND  handle data  not_member_header  terminalId=${not_member_ipad}  &{not_member_user}
Force Tags  IPAD