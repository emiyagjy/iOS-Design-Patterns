//
//  EmailValidate.swift
//  StrategyPattens
//
//  Created by GujyHy on 2018/1/4.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class EmailValidate: InputValidate {
    
    override func validateInput(_ input:UITextField) -> Bool{
        let count = input.text?.count
        if (count?.hashValue)! > 0 {
            
            if input.text == "Email"{
                self.errorMessage = "输入Email错误"
            }
            
        }else{
            self.errorMessage = "没有输入"
        }
        return self.errorMessage == "" ? true : false
    }

}
