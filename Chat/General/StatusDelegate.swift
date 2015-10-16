//
//  StatusDelegate.swift
//  Chat
//
//  Created by lcd on 15/9/16.
//  Copyright © 2015年 lcd. All rights reserved.
//

import Foundation

//状态代理协议
protocol StatusDelegate {
    func isOn(zt:Zhuangtai)
    func isOff(zt:Zhuangtai)
    func meOff()
}