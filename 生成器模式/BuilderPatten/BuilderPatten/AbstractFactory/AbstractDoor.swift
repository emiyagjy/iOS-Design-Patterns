//
//  AbstractDoor.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

protocol AbstractDoor:BuilderProtocol {
    
    /// 颜色
    ///
    /// - Parameter number: 门的颜色
    func doorColor(_ color:UIColor)
    
    /// 信息
    ///
    /// - Returns: 轮子信息
    func information() -> String
}

