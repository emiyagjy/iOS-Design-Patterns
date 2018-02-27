//
//  AppleFactoryFactory.swift
//  AbstractFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class AppleFactory: BaseFactory {

    
    override func createPhone() -> BasePhone {
        return iPhone()
    }
    
    override func createWatch() -> BaseWatch {
        return iWatch()
    }
}
