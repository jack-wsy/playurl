# -*- coding:utf-8 -*-
# !/usr/bin/env python3
# @author : Wsy
# @date : 2020/4/5
# @file : ApiBase
# @version : 1.0.0
# @desc :  

class ApiBase:
    # 协议、ip、port
    HOST = "http://183.192.162.101:8084"

    # HOST = "http://mgvr.miguvideo.com"

    def __init__(self, header=None):
        '''
        父类初始化方法
        :param header: 请求头信息
        '''
        # 实例属性 url、header、result 写入日志方便处理
        self.url = None
        self.header = header
        self.result = None
        self.param = None

    @staticmethod
    def key_handle(self, verify_value, keylist):
        '''
        对接口返回值 进行处理，获取到返回结果中的用来判断是否符合预期的value值
        :param verify_value: 接口返回值
        :param keylist: key值得集合，用来获取需要检查的数据
        :return: 用来判断是否符合预期的value值
        '''
        for one in keylist:
            verify_value = verify_value[one]
            if one == "url":
                verify_value = verify_value.split("/")[2]
        return verify_value

    # 检查点处理函数
    def verify_result(self, result, **kwargs):
        '''
        判断接口返回值是否符合预期，符合返回True，不符合返回False
        :param result: 接口返回值
        :param kwargs: 用来验证接口返回是否符合预期的数据
        :return: True / False
        '''
        for key, value in kwargs.items():
            keylist = key.split(".")
            verify_value = self.key_handle(result, keylist)
            if value != verify_value:
                return False
        return True

if "__main__" == __name__:
    pass
    # url = {"url": "http://gslbmgspvod.miguvideo.com/depository_sp/asset/zhengshi/5102/078/712/5102078712/media/5102078712_5003482619_54.mp4.m3u8?msisdn=15800447240&mdspid=&spid=699014&netType=0&sid=5500565540&pid=2028597139&timestamp=20200405103137&Channel_ID=0116_25000000-99000-100300010010001&ProgramID=645372525&ParentNodeID=-99&assertID=5500565540&client_ip=182.18.67.0&SecurityKey=20200405103137&promotionId=&mvid=5102078712&mcid=1001&mpid=130000099332&playurlVersion=PRE-0.0.3&userid=353775779&jmhm=15800447240&videocodec=h264&encrypt=575fa75a1758a035d98488d8660d197c"}
    #
    # ApiBase.key_handle(url, ["url"])