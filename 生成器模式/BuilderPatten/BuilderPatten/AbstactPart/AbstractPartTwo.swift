//
//  AbstractPartTwo.swift
//  BuilderPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit
// 抽象的部件
protocol AbstractPartTwo:BuilderProtocol {
    func buildTree()
    func buildNumber()
}
