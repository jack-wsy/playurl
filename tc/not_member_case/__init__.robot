*** Settings ***
Library  pylib/myfunction.py
Suite Setup  get file data  userInfo  NOT_MEMBER  id_save=not_member_user
Force Tags  NOT_MEMBER_USER