//
//  CoffeeShop.swift
//  FlyWeightPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class CoffeeShop: NSObject {

    /// 咖啡菜单对象
    var coffeeMenu:CoffeeMenu?
    var orders    :[String : CoffeeFlavor]?
    
    override init() {
        super.init()
        
        self.coffeeMenu = CoffeeMenu()
        self.orders     = [String : CoffeeFlavor]()
    }
 
    /// 用户下单
    ///
    /// - Parameters:
    ///   - flavor: 指定的味道
    ///   - table: 桌号
    func takeOrder(_ flavor:String,table:Int) {
        let tableKey = "\(table)"
        self.orders?[tableKey] = self.coffeeMenu?.lookupWithFlavor(flavor)
    }
    
    /// 服务
    func serve() {
        // 调用了享元的对象
        for key in (self.orders?.keys)!{
            let flavor = (self.orders?[key])!
            print("coffeeFlavor =  \(flavor)   table is \(key)")
        }
    }
    
}
