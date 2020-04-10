*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  pc  id_save=member_pc
...  AND  handle data  member_header  terminalId=${member_pc}  &{member_user}
Force Tags  PC