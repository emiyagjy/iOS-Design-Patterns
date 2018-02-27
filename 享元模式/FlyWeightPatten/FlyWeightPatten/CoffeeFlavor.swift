//
//  CoffeeFlavor.swift
//  FlyWeightPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class CoffeeFlavor {

    var flavor:String = ""

    
}

extension CoffeeFlavor : CustomStringConvertible {
    var description: String {
        return  self.flavor
    }
}
