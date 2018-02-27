//
//  CustomField.swift
//  StrategyPattens
//
//  Created by GujyHy on 2018/1/4.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class CustomField: UITextField {

    
    /// 抽象的基类
    var inputValidate:InputValidate?
    
    // 集成策略
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Public
    
    /// 验证输入合法性
    func validate() -> Bool {
        if inputValidate != nil {
            return inputValidate!.validateInput(self)
        }
        return false
    }
}











