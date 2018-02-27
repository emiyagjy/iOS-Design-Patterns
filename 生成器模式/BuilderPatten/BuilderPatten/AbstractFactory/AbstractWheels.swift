//
//  AbstractWheels.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

protocol AbstractWheels:BuilderProtocol {

    /// 有几个轮子
    ///
    /// - Parameter number: 轮子数量
    func wheelsNumber(_ number:Int)
    
    /// 信息
    ///
    /// - Returns: 轮子信息
    func information() -> String
}
