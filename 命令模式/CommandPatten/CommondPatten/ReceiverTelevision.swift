//
//  ReceiverTelevision.swift
//  CommondPatten
//
//  Created by GujyHy on 2017/12/18.
//  Copyright © 2017年 GujyHy. All rights reserved.
//

import UIKit

class ReceiverTelevision: NSObject {
    
    func turnOn() {
        print("open 📺")
    }
    
    func turnOff() {
        print("close 📺")
    }
    
    func changeChannel(_ channel:Int) {
        print("更换频道\(channel)")
    }
    
}
