*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  vr  id_save=supper_member_vr
...  AND  handle data  supper_member_header  appVersion=${supper_member_vr}  &{supper_member_user}
Force Tags  VR