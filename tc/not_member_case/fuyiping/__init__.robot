*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  fuyiping  id_save=not_member_fuyiping
...  AND  handle data  not_member_header  terminalId=${not_member_fuyiping}  &{not_member_user}
Force Tags  FUYIPING