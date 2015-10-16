//
//  CDXMPPManager.swift
//  Chat
//
//  Created by lcd on 15/9/16.
//  Copyright © 2015年 lcd. All rights reserved.
//


import UIKit
private let sharedInstance = XMPPManager()
let hostName = "127.0.0.1"
let hostPort = 5222


class XMPPManager: NSObject,XMPPStreamDelegate {
    var username = ""
    var password = ""
    
    class var sharedXMPPManager : XMPPManager {
        return sharedInstance
    }
    
    let _xmppstream = XMPPStream();
    /**
    初始化xmppStream
    */
    func setupStream() {
        _xmppstream.addDelegate(self, delegateQueue: dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0))
    }
    
    /**
    用户登录
    */
    func xmppLogin(username:String,password:String) {
        self.username = username
        self.password = password
        self.conntectToSever()
    }
    
    /**
    连接服务器
    */
    func conntectToSever() {
        //设置JID
        //        if let _ = XMPPStream() {
        //            self.setupStream()
        //        }
        self.setupStream()
        _xmppstream.myJID = XMPPJID.jidWithUser(self.username, domain: "lcd.local", resource: "android")
        //设置主机地址
        _xmppstream.hostName = hostName
        //设置主机端口
        _xmppstream.hostPort = 5222
        //发起连接
        do {
            try _xmppstream.connectWithTimeout(100000)
            print("发起连接成功")
        }   catch {
            print("发起连接失败")
        }
    }
    
    
    /**
    发送密码
    */
    func sendPswToSever() {
        do {
            try!_xmppstream.authenticateWithPassword("123")
            print("发送密码成功")
        }
    }
    
    /**
    发送在线状态
    */
    func sendOnline() {
        let presence = XMPPPresence()
        _xmppstream.sendElement(presence)
    }
    
    //MARK:xmppstream delegate
    func xmppStreamDidConnect(sender: XMPPStream!) {
        print("连接成功")
        self.sendPswToSever()
    }
    
    /**
    登陆成功
    */
    func xmppStreamDidAuthenticate(sender: XMPPStream!) {
        print("登陆成功")
        self.sendOnline()
    }
    
    /**
    登陆失败
    */
    func xmppStream(sender: XMPPStream!, didNotAuthenticate error: DDXMLElement!) {
        print(error)
    }
}
