*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  miguc  id_save=not_member_miguc
...  AND  handle data  not_member_header  terminalId=${not_member_miguc}  &{not_member_user}
Force Tags  MIGUC