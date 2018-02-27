//
//  Invoker.swift
//  CommondPatten
//
//  Created by GujyHy on 2017/12/18.
//  Copyright © 2017年 GujyHy. All rights reserved.
//

import UIKit
//  命令的纸箱子
class Invoker: NSObject {
    
    static let sharedInstance = Invoker()
    private override init() {}
    // 添加命令并执行
    func addAndExcute(param:CommandProtocol){
        param.excute()
    }
}
