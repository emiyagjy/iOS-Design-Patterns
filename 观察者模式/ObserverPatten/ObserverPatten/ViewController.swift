//
//  ViewController.swift
//  ObserverPatten
//
//  Created by GujyHy on 2017/12/20.
//  Copyright © 2017年 GujyHy. All rights reserved.
//

import UIKit

let SCIENCE:String  = "science"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: 书刊订阅
        // 创建订阅号
        SubscriptionServiceCenter.shareInstance.createSubscriptionNumber(subscriptionNumber: SCIENCE)
        
        // 添加用户到指定刊物
        SubscriptionServiceCenter.shareInstance.addCustomer(customer: self, subscriptionNumber: SCIENCE)
        
        //  发送消息
        SubscriptionServiceCenter.shareInstance.sendMessage(message: "V1.0" as AnyObject, toSubscriptionNumber: SCIENCE)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController:SubscriptionServiceCenterProtocol {
    func subscriptionMessage(message: AnyObject, subscriptiomNumber: String) {
        print("messsage : \(message) , number: \(subscriptiomNumber)")
    }
    
    
    
}

