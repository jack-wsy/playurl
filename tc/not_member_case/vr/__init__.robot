*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  vr  id_save=not_member_vr
...  AND  handle data  not_member_header  appVersion=${not_member_vr}  &{not_member_user}
Force Tags  VR