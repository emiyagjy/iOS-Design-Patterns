//
//  CardAbstractAdapter.swift
//  AdapterPatten
//
//  Created by GujyHy on 2018/1/2.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit


/// 抽象类，里面都是空实现
class CardAbstractAdapter: NSObject,CardAdapterProtocol {
    
    var data:AnyObject?
    /// 与输入对象建立联系
    ///
    /// - Parameter data: 输入对象
    convenience init(_ data:AnyObject){
        self.init()
        self.data = data
    }
    
    func name() -> String {
        return ""
    }
    func phoneNumber() -> String {
        return ""
    }
    func lineColor() -> UIColor? {
        return nil
    }
}

