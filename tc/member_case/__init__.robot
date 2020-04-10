*** Settings ***
Library  pylib/myfunction.py
Suite Setup  get file data  userInfo  MEMBER  id_save=member_user
Force Tags  MEMBER_USER