# -*- coding:utf-8 -*-
# !/usr/bin/env python3
# @author : Wsy
# @date : 2020/4/5
# @file : playUrlVr
# @version : 1.0.0
# @desc :  VR
import requests
from pylib.ApiBase import ApiBase
from pylib.myfunction import logger_info

# VR回归
class PlayUrlVR(ApiBase):
    # 现网
    # uri = "/playurl-vr/v1/play/playurl"
    # 预生产
    uri = "/playurl/v1/play/playurl"

    def __init__(self, header=None):
        super().__init__(header)
        self.url = self.HOST + self.uri

    @logger_info
    def get_playurl(self, contId, salt, sign, timestamp, rateType, vr):

        self.param = {
            "contId": contId,
            "salt": salt,
            "sign": sign,
            "timestamp": timestamp,
            "rateType": rateType,
            "vr": vr
        }

        self.result = requests.get(
            url=self.url,
            headers=self.header,
            params=self.param
        ).json()

        return self.result
