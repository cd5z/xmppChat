//
//  MessageDelegate.swift
//  Chat
//
//  Created by lcd on 15/9/16.
//  Copyright © 2015年 lcd. All rights reserved.
//

import Foundation

//消息代理协议
protocol MessageDelegate {
    func newMsg(aMsg:WXMessage)
}