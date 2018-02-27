//
//  ModelAdapter.swift
//  AdapterPatten
//
//  Created by GujyHy on 2018/1/2.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class ModelAdapter: CardAbstractAdapter {
//    /// 与输入对象建立联系
//    ///
//    /// - Parameter data: 输入对象
//    convenience init(_ data:AnyObject){
//        self.init()
//        self.data = data
//    }
    override func name() -> String {
        let model:Model = self.data as! Model
        return model.name
    }
    override func phoneNumber() -> String {
        let model:Model = self.data as! Model
        return model.phoneNumber
    }
    override func lineColor() -> UIColor? {
        let model:Model = self.data as! Model
        return model.lineColor
    }
}
