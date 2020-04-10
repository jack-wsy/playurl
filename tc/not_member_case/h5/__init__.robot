*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  h5  id_save=not_member_h5
...  AND  handle data  not_member_header  terminalId=${not_member_h5}  &{not_member_user}
Force Tags  H5