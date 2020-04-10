*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  android  id_save=tourist_android
...  AND  handle data  tourist_header  terminalId=${tourist_android}  &{tourist_user}
Force Tags  ANDROID