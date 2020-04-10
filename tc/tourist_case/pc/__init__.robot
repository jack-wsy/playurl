*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  pc  id_save=tourist_pc
...  AND  handle data  tourist_header  terminalId=${tourist_pc}  &{tourist_user}
Force Tags  PC