//
//  ViewController.swift
//  AbstractFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 获取工厂
        let factory = FactoryManager.factoryWithBrand(.kGoogle)
        
        // 创建产品
        let phone =  factory.createPhone()
        let watch =  factory.createWatch()
        
        print("phone = \(phone)")
        print("watch = \(watch)")
    }

}

