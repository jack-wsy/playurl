*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  miguc  id_save=member_miguc
...  AND  handle data  member_header  terminalId=${member_miguc}  &{member_user}
Force Tags  MIGUC