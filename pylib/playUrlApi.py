# -*- coding:utf-8 -*-
# !/usr/bin/env python3
# @author : Wsy
# @date : 2020/4/5
# @file : playUrlApi
# @version : 1.0.0
# @desc :  播放接口
import requests

from pylib.ApiBase import ApiBase
from pylib.myfunction import logger_info


class PlayUrl(ApiBase):
    uri = "/playurl/v1/play/playurl"

    def __init__(self, header=None):
        super().__init__(header)
        self.url = self.HOST + self.uri

    @logger_info
    def get_playurl(self, contId, salt, sign, timestamp, rateType):

        self.param = {
                "contId": contId,
                "salt": salt,
                "sign": sign,
                "timestamp": timestamp,
                "rateType": rateType
            }

        self.result = requests.get(
            url=self.url,
            headers=self.header,
            params=self.param
        ).json()

        return self.result

