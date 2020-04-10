*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  android  id_save=member_android
...  AND  handle data  member_header  terminalId=${member_android}  &{member_user}
Force Tags  ANDROID