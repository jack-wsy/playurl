*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  h5  id_save=tourist_h5
...  AND  handle data  tourist_header  terminalId=${tourist_h5}  &{tourist_user}
Force Tags  H5