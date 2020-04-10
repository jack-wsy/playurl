*** Settings ***
Library  pylib/myfunction.py
Suite Setup  get file data  userInfo  SUPPER_MEMBER  id_save=supper_member_user
Force Tags  SUPPER_MEMBER_USER