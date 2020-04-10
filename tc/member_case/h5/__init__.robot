*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  h5  id_save=member_h5
...  AND  handle data  member_header  terminalId=${member_h5}  &{member_user}
Force Tags  H5