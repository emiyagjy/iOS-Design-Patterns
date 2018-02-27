//
//  Door.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class Door: NSObject,AbstractDoor,BuilderProtocol{

    func build() {
        // todo
    }
    func doorColor(_ color:UIColor){
        // todo
    }
    func information() -> String{
        return "A door ,color: red"
    }
}
