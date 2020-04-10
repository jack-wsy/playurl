*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  ios  id_save=not_member_ios
...  AND  handle data  not_member_header  terminalId=${not_member_ios}  &{not_member_user}
Force Tags  IOS