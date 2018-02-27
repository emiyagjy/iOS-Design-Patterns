//
//  Node.swift
//  IteratorPattern
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class Node: NSObject {
    
   
    var nextNode:Node?  // 可以指向下一个节点
    var item:AnyObject? // 节点挂载的对象
    
    /// 便利构造器方法
    ///
    /// - Parameter item: 节点挂载的对象
    convenience init(_ item:AnyObject) {
        self.init()
        self.item = item
    }
}

