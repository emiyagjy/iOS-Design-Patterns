//
//  ViewController.swift
//  SimpleFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 工厂制造具体的产品
        let device = DeviceFactory.devicePhoneWithDeviceType(.kAndroid) as! Android
        
        // 使用产品的功能
        device.customTheme()
        
//        device.
    }
    
    
}

