//
//  CardAdapterProtocol.swift
//  AdapterPatten
//
//  Created by GujyHy on 2018/1/2.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

protocol CardAdapterProtocol {
    func name() -> String
    func phoneNumber() -> String
    func lineColor() -> UIColor?
}
