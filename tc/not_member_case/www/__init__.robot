*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  www  id_save=not_member_www
...  AND  handle data  not_member_header  terminalId=${not_member_www}  &{not_member_user}
Force Tags  WWW