*** Settings ***
Library  pylib/myfunction.py
Suite Setup  get file data  userInfo  TOURIST  id_save=tourist_user
Force Tags  TOURIST_USER