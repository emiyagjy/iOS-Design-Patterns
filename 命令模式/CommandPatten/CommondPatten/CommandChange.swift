//
//  CommandChange.swift
//  CommondPatten
//
//  Created by GujyHy on 2017/12/18.
//  Copyright © 2017年 GujyHy. All rights reserved.
//

import UIKit

class CommandChange: NSObject {

    var receiver:ReceiverTelevision?
    var change:Int?
    // 便利构造函数
    convenience init(_ receiver:ReceiverTelevision) {
        self.init()
        self.receiver = receiver
    }
}

extension CommandChange:CommandProtocol {
    func excute() {
        self.receiver?.changeChannel(change!)
    }
}

