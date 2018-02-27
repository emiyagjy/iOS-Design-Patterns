//
//  BaseDevice.swift
//  SimpleFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit


// 接口定义功能
protocol PhoneProtocal {
    // 打电话
    func phoneCall()
    // 发短信
    func sendMessage()
}

class BaseDevice: NSObject,PhoneProtocal {

    func phoneCall() {
        //  空实现
    }
    func sendMessage() {
        // 空实现
    }
}
