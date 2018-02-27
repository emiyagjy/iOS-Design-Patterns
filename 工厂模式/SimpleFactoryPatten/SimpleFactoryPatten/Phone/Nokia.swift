//
//  Nokia.swift
//  SimpleFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class Nokia: BaseDevice {

    override func phoneCall() {
        print("Nokia 打电话")
    }
    override func sendMessage() {
        print("Nokia 发短信")
    }
    
    // 敲核桃
    func knockWalut(){
        print("Nokia 敲核桃")
    }
}
