//
//  GoogleFactory.swift
//  AbstractFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

class GoogleFactory: BaseFactory {

    override func createPhone() -> BasePhone {
        return Android()
    }
    
    override func createWatch() -> BaseWatch {
        return AndroidWatch()
    }
}
