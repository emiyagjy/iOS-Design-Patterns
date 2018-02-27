//
//  InputValidate.swift
//  StrategyPattens
//
//  Created by GujyHy on 2018/1/4.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class InputValidate: NSObject {

    
    /// 当 validate 为true的时候 返回errorMessage
    var errorMessage:String = ""
    
    /// 策略输入
    ///
    /// - Parameter input
    /// - Returns: 如果为true 测试通过 为false 返回出错信息 测试不通过
    func validateInput(_ input:UITextField) -> Bool{
        return false // 抽象父类，让具体的子类实现
    }
    
}
