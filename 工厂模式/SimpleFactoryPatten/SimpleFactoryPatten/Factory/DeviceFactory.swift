//
//  DeviceFactory.swift
//  SimpleFactoryPatten
//
//  Created by GujyHy on 2018/2/6.
//  Copyright © 2018年 Gujy. All rights reserved.
//

import UIKit

enum EDeviceType {
    case kiPhone,
         kAndroid,
         kNokia
}

class DeviceFactory: NSObject {

    
    static func devicePhoneWithDeviceType(_ deviceType:EDeviceType) -> PhoneProtocal {
        
        let device:PhoneProtocal?
        switch deviceType {
        case .kiPhone:
            device = iPhone()
            break
        case .kAndroid:
            device = Android()
            break
        case .kNokia:
            device =  Nokia()
            break
        }
        return device!
    }
}
