//
//  CommandOff.swift
//  CommondPatten
//
//  Created by GujyHy on 2017/12/18.
//  Copyright © 2017年 GujyHy. All rights reserved.
//

import UIKit

class CommandOff: NSObject {
    
    var receiver:ReceiverTelevision?
    // 便利构造函数
    convenience init(_ receiver:ReceiverTelevision) {
        self.init()
        self.receiver = receiver
    }
}

extension CommandOff:CommandProtocol {
    func excute() {
        self.receiver?.turnOff()
    }
}

