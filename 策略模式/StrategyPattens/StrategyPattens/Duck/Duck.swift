//
//  Duck.swift
//  StrategyPattens
//
//  Created by GujyHy on 2018/1/3.
//  Copyright © 2018年 GujyHy. All rights reserved.
//


import UIKit

class Duck: NSObject {
    
    var flyI:FlyInterface?
    var quackI:QuackInterface?
    
    
    func performFly(){
        if flyI != nil {
            flyI?.fly()
        }
    }
    
    func performQuack(){
        if quackI != nil {
            quackI?.quack()
        }
    }

}
