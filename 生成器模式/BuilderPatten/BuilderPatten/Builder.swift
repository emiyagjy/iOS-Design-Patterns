//
//  Builder.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit
//Director 指导者
class Builder: NSObject {
    
    var engine:AbstractEngine?
    var wheels:AbstractWheels?
    var door:AbstractDoor?
    
    /// 产品信息
    var productInfos:[String:Any]?
    
    override init() {
        super.init()
//        self.bulidAllParts()
        
    }
    func bulidAllParts(){
        // 创建所有组件
        self.engine?.build()
        self.wheels?.build()
        self.door?.build()
        
        var dataDict = [String:Any]()
        // 组装产品
        dataDict["engine"] = self.engine?.information()
        dataDict["wheels"] = self.wheels?.information()
        dataDict["door"]   = self.door?.information()
        
        self.productInfos = dataDict
        
        
    }
}
