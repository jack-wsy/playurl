# -*- coding:utf-8 -*-
# !/usr/bin/env python3
# @author : Wsy
# @date : 2020/4/5
# @file : playUrlWeiBo
# @version : 1.0.0
# @desc : 微博
from pprint import pprint
import requests
from pylib.ApiBase import ApiBase

# 暂不开发
class PlayUrlWeiBo(ApiBase):
    uri = "/playurl/v1/play/weiboplayurl"

    def __init__(self, header=None):
        super().__init__(header)
        self.url = self.HOST + self.uri

    def get_playurl(self, contId=None, cid=None):
        if contId:
            self.param = {
                "contId": contId
            }
        if cid:
            self.param = {
                "cid": cid
            }

        self.result = requests.get(
            url=self.url,
            params=self.param,
            headers=self.header
        )

        return self.result

if "__main__" == __name__:
    pprint(PlayUrlWeiBo().get_playurl(contId=649288075).headers)
