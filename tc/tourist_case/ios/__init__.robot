*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  ios  id_save=tourist_ios
...  AND  handle data  tourist_header  terminalId=${tourist_ios}  &{tourist_user}
Force Tags  IOS