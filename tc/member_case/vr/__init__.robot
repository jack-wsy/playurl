*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  vr  id_save=member_vr
...  AND  handle data  member_header  appVersion=${member_vr}  &{member_user}
Force Tags  VR