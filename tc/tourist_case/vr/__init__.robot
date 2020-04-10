*** Settings ***
Library  pylib/myfunction.py
Suite Setup  run keywords  get file data  terminal  vr  id_save=tourist_vr
...  AND  handle data  tourist_header  appVersion=${tourist_vr}  &{tourist_user}
Force Tags  VR