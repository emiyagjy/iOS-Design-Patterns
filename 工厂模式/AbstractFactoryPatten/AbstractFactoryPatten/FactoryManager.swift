//
//  FactoryManager.swift
//  AbstractFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

enum EFactoryType {
    case kApple,kGoogle
}

class FactoryManager: NSObject {

    
    /**
     *  获取工厂
     *
     *  @param factoryType 工厂类型
     *
     *  @return
     */
    static func factoryWithBrand(_ factoryType:EFactoryType) -> BaseFactory{
        
        let factory:BaseFactory!
        
        if factoryType == EFactoryType.kApple {
            factory = AppleFactory()
            
        }else {
            factory = GoogleFactory()
        }
        return factory!
    }
    
    
}
