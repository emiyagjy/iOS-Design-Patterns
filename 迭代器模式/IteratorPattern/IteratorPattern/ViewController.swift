//
//  ViewController.swift
//  IteratorPattern
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var linkedList:LinkedList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        /// 系统自带的迭代器
        
        // 创建集合对象
        let arr = ["a","b","c"]
        
        // 从集合对象中创建迭代器
        let iterator:EnumeratedSequence = arr.enumerated()
        
        // 从集合对象中访问元素
        for item in iterator {
            print(item.element)
        }
        
        /// 单链表实现迭代器模式
        // 创建集合对象
        self.linkedList = LinkedList() // 迭代器是抽象的，用协议来表示
        self.linkedList?.addItem("A" as AnyObject)
        self.linkedList?.addItem("B" as AnyObject)
        self.linkedList?.addItem("C" as AnyObject)
        self.linkedList?.addItem("D" as AnyObject)
        
        // 从集合对象创建迭代器
        let linkedListIterator = LinkedListIterator(linkedList: self.linkedList!)
        var node:Node? = linkedListIterator.nextObject() as? Node
        while node != nil {
            print(node?.item as! String)
            node = linkedListIterator.nextObject() as? Node
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

