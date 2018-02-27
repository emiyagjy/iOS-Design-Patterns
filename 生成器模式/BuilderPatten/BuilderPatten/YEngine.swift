//
//  YEngine.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class YEngine: NSObject ,AbstractEngine,BuilderProtocol {
    func build() {
        
    }
    
    func engineScale(_ salce:CGFloat){
        // todo
    }
    
    func engineWeight(_ kg:CGFloat){
        // todo
    }
    
    func information() -> String{
        return "Y engine, sacle : 99, weight : 200"
    }
}
