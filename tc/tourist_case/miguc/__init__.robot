*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  miguc  id_save=tourist_miguc
...  AND  handle data  tourist_header  terminalId=${tourist_miguc}  &{tourist_user}
Force Tags  MIGUC