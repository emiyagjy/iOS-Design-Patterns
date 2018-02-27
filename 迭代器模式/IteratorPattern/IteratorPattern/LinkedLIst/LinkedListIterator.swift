//
//  LinkedListIterator.swift
//  IteratorPattern
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class LinkedListIterator: NSObject,IteratorProtocol {

    var linkedList:LinkedList?
    var currNode  : Node?
    convenience init(linkedList linkList:LinkedList){
        self.init()
        self.linkedList = linkList
        self.currNode   = linkList.headNode
    }
    
    
    func nextObject() -> Any? {
        self.currNode = self.currNode?.nextNode
        return self.currNode
    }

}
