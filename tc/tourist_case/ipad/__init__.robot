*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  ipad  id_save=tourist_ipad
...  AND  handle data  tourist_header  terminalId=${tourist_ipad}  &{tourist_user}
Force Tags  IPAD