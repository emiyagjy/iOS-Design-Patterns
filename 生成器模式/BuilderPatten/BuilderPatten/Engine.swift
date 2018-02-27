//
//  Engine.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class Engine: NSObject,AbstractEngine,BuilderProtocol {
    func build() {
        
    }

    func engineScale(_ salce:CGFloat){
        // todo
    }
    
    func engineWeight(_ kg:CGFloat){
        // todo
    }
    
    func information() -> String{
        return "A engine, sacle : 10, weight : 100"
    }
    
    
}
