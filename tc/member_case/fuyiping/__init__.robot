*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  fuyiping  id_save=member_fuyiping
...  AND  handle data  member_header  terminalId=${member_fuyiping}  &{member_user}
Force Tags  FUYIPING