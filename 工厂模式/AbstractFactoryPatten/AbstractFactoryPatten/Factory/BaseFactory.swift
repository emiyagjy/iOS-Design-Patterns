//
//  BaseFactory.swift
//  AbstractFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class BaseFactory: NSObject {

    
    func createPhone() -> BasePhone {
        return BasePhone()
    }
    
    func createWatch() -> BaseWatch {
        return BaseWatch()
    }
}
