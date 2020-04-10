*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  fuyiping  id_save=tourist_fuyiping
...  AND  handle data  tourist_header  terminalId=${tourist_fuyiping}  &{tourist_user}
Force Tags  FUYIPING