//
//  iPhone.swift
//  SimpleFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class iPhone: BaseDevice {

    override func phoneCall() {
        print("iPhone 打电话")
    }
    override func sendMessage() {
        print("iPhone 发短信")
    }
    // 指纹识别
    func fingerprintIndetification(){
        print("iPhone 指纹识别")
    }
    
}
