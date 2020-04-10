*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  ios  id_save=member_ios
...  AND  handle data  member_header  terminalId=${member_ios}  &{member_user}
Force Tags  IOS