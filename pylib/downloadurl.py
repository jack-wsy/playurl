# -*- coding:utf-8 -*-
# !/usr/bin/env python3
# @author : Wsy
# @date : 2020/4/6
# @file : downloadurl
# @version : 1.0.0
# @desc :  下载接口
import requests
from pylib.ApiBase import ApiBase
from pylib.myfunction import logger_info


class DownLoadUrl(ApiBase):
    uri = "/playurl/v1/down/downurl"

    def __init__(self, header=None):
        super().__init__(header)
        self.url = self.HOST + self.uri

    @logger_info
    def get_downurl(self, contIds, salt, sign, timestamp, rateType, uc="", mt="", nt="", h265="", dolby="", vr=""):

        self.param = {
            "contIds": contIds,
            "salt": salt,
            "sign": sign,
            "timestamp": timestamp,
            "rateType": rateType,
            "uc": uc,
            "mt": mt,
            "nt": nt,
            "h265": h265,
            "dolby": dolby,
            "vr": vr
        }

        self.result = requests.get(
            url=self.url,
            headers=self.header,
            params=self.param
        ).json()

        return self.result

    @staticmethod
    def key_handle(verify_value, keylist):
        for one in keylist:
            if one == "body":
                verify_value = verify_value[one][0]
                continue
            verify_value = verify_value[one]
            if one == "url":
                verify_value = verify_value.split("/")[2]
        return verify_value

    # def verify_result(self, result, **kwargs):
    #     for key, value in kwargs.items():
    #         keylist = key.split(".")
    #         verify_value = self.key_handle(result, keylist)
    #         if value != verify_value:
    #             return False
    #     return True
