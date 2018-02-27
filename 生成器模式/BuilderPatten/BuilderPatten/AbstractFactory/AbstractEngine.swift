//
//  AbstractEngine.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//


import UIKit

protocol AbstractEngine:BuilderProtocol {
    
    /// 引擎的尺寸
    ///
    /// - Parameter salce: 尺寸
    func engineScale(_ salce:CGFloat);
    
    /// 引擎的重量
    ///
    /// - Parameter kg: 重量
    func engineWeight(_ kg:CGFloat);
    
    /// 信息
    ///
    /// - Returns: 引擎信息
    func information() -> String
}
