//
//  NewCardModelAdapter.swift
//  AdapterPatten
//
//  Created by GujyHy on 2018/1/2.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class NewCardModelAdapter: CardAbstractAdapter {

//    /// 与输入对象建立联系
//    ///
//    /// - Parameter data: 输入对象
//    convenience init(_ data:AnyObject){
//        self.init()
//        self.data = data
//    }
    override func name() -> String {
        let model:NewCardModel = self.data as! NewCardModel
        return model.name
    }
    override func phoneNumber() -> String {
        let model:NewCardModel = self.data as! NewCardModel
        return model.phoneNumber
    }
    override func lineColor() -> UIColor? {
        let model:NewCardModel = self.data as! NewCardModel
        // todo
        if model.colorHexString == "black" {
            return .black
        }else{
            return .red
        }
    }
}
