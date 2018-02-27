//
//  ViewController.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var builder:Builder?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 创建组装者
        self.builder = Builder()
        
        // 指定承包商
//        self.builder?.engine = Engine()
        self.builder?.engine = YEngine()
        self.builder?.wheels = Wheels()
        self.builder?.door   = Door()
        
        // 构建所有部件
        self.builder?.bulidAllParts()
        
        // 获取产品
        print((self.builder?.productInfos)!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

