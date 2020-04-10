*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  www  id_save=member_www
...  AND  handle data  member_header  terminalId=${member_www}  &{member_user}
Force Tags  WWW