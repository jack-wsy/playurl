*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  miniprogram  id_save=tourist_miniprogram
...  AND  handle data  tourist_header  terminalId=${tourist_miniprogram}  &{tourist_user}
Force Tags  MINI_PROGRAM