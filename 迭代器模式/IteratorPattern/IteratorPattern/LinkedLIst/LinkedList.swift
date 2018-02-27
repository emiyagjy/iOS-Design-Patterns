//
//  LinkedList.swift
//  IteratorPattern
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

// 管理节点的数据节点
class LinkedList: NSObject {

    var headNode:Node?        // 头节点
    var numberOfNodes:Int = 0 // 有几个节点
    
    override init() {
        super.init()
        // 在init方法中创建头节点
        self.headNode = Node()
    }
    
    /// 节点挂载的对象
    ///
    /// - Parameter item: 挂载的对象
    func addItem(_ item:AnyObject){
        
        if self.headNode == nil { // 如果无头节点
            // 创建头节点
            self.headNode = Node(item)
        }else{
            self.addItem(item, withNode:self.headNode!)
        }
    }

    // MARK: Private
    fileprivate func addItem(_ item:AnyObject,withNode node:Node){
        if node.nextNode == nil {
            node.nextNode = Node(item)
        }else{
            // 递归调用
            self.addItem(item, withNode: node.nextNode!)
        }
    }
    
    
}
