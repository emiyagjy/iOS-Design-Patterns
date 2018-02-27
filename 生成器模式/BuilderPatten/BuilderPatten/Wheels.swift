//
//  Wheels.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class Wheels: NSObject,AbstractWheels,BuilderProtocol {

    func build() {
        
    }
    
    func wheelsNumber(_ number:Int){
        // todo
    }
    
    func information() -> String{
       return "A wheels, number : 1"
    }
    
}
