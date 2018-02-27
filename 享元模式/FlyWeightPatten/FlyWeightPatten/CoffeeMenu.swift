//
//  CoffeeMenu.swift
//  FlyWeightPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class CoffeeMenu: NSObject {

    var menu:[String : CoffeeFlavor]?
    
    override init() {
        super.init()
        self.menu = [String : CoffeeFlavor]()
    }
    
    /// 获取指定的咖啡味道
    ///
    /// - Parameter flavor: 味道
    /// - Returns: 咖啡的味道
    func lookupWithFlavor(_ flavor:String) -> CoffeeFlavor {
        if let f = self.menu?[flavor] {
            return f
        }else{
            let cFlavor = CoffeeFlavor()
            cFlavor.flavor = flavor
            self.menu?[flavor] = cFlavor
            return cFlavor
        }
    }
}
