# -*- coding:utf-8 -*-
# !/usr/bin/env python3
# @author : Wsy
# @date : 2020/4/5
# @file : myfunction
# @version : 1.0.0
# @desc :  公用的一些方法
import json
import time
from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn
from datadir.datapath import datapath

# 将url，请求参数，响应地址记录进入日志中
def logger_info(func):
    '''
    装饰器
    :param func: 函数对象
    :return: inner函数
    '''
    def inner(self, *args, **kwargs):
        '''
        inner函数，将url、param、header、result写入log日志中，方便定位问题
        :param self: 当前对象
        :param args: 函数带入的参数
        :param kwargs: 函数带入的参数
        :return: 接口返回值
        '''
        result = func(self, *args, **kwargs)
        logger.info("url------>: %s\n" % self.url)
        logger.info("header--->: %s\n" % self.header)
        logger.info("param---->: %s\n" % self.param)
        logger.info("result--->: %s\n" % self.result)
        return result
    return inner

# 获取时间戳
def get_timestamp():
    '''
    返回13位unix时间戳
    :return: 13位unix时间戳
    '''
    timestamp = time.time()
    timestamp = int(timestamp * 1000)
    return timestamp

# 读取文件数据
def get_file_data(filename, *key, id_save=None):
    '''
    从json文件中获取数据，并返回
    :param filename: 文件名
    :param key: 需要获取到数据的key的集合
    :param id_save: 需要设置为全局变量时传值
    :return: 测试数据
    '''
    with open("%s/%s.json" %(datapath, filename), "r") as data_f:
        data = json.load(data_f)
        for one in key:
            data = data[one]
    if id_save:
        BuiltIn().set_global_variable("${%s}" % id_save, data)
    return data

# 数据整合
def handle_data(id_save=None, **kwargs):
    '''
    :param id_save: 需要设置全局变量时传值
    :param kwargs: 需要组合成dict的数据，一般用来组合header数据
    :return: 组合后的数据 -- 一般用在初始化时header数据
    '''
    param = {}
    for key, value in kwargs.items():
        param[key] = value
    if id_save:
        BuiltIn().set_global_variable("${%s}" % id_save, param)
    return param

if "__main__" == __name__:
    print(get_file_data("userInfo", "MEMBER", "member_user"))
