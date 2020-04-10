*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  android  id_save=not_member_android
...  AND  handle data  not_member_header  terminalId=${not_member_android}  &{not_member_user}
Force Tags  ANDROID