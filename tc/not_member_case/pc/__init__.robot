*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  pc  id_save=not_member_pc
...  AND  handle data  not_member_header  terminalId=${not_member_pc}  &{not_member_user}
Force Tags  PC