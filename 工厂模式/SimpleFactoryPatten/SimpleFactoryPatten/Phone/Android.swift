//
//  Android.swift
//  SimpleFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class Android: BaseDevice {

    override func phoneCall() {
        print("Android 打电话")
    }
    override func sendMessage() {
        print("Android 发短信")
    }
    
    // 定制主题
    func customTheme(){
        print("Android 定制主题")
    }
}
