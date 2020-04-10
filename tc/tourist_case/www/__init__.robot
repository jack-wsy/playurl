*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  www  id_save=tourist_www
...  AND  handle data  tourist_header  terminalId=${tourist_www}  &{tourist_user}
Force Tags  WWW