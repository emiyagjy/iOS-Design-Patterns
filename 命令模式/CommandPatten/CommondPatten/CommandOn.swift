//
//  CommandOn.swift
//  CommondPatten
//
//  Created by GujyHy on 2017/12/18.
//  Copyright © 2017年 GujyHy. All rights reserved.
//

import UIKit

class CommandOn: NSObject{
    
    var receiver:ReceiverTelevision?
    // 便利构造函数
    convenience init(_ receiver:ReceiverTelevision) {
        self.init()
        self.receiver = receiver
    }
}

extension CommandOn:CommandProtocol {
    func excute() {
        self.receiver?.turnOn()
    }
}

