//
//  SubscriptionServiceCenter.swift
//  ObserverPatten
//
//  Created by GujyHy on 2017/12/21.
//  Copyright © 2017年 GujyHy. All rights reserved.
//

import UIKit

class SubscriptionServiceCenter: NSObject {
    
    static let shareInstance = SubscriptionServiceCenter()
    var _subscriptionDictionary:[String:NSHashTable<AnyObject>]!
    private override init() {
        super.init()
        _subscriptionDictionary = [String : NSHashTable<AnyObject>] ()
    }
    
    // MARK: 维护订阅信息
    /// 创建订阅号
    ///
    /// - Parameter subscriptionNumber: 订阅号码
    func createSubscriptionNumber(subscriptionNumber:String) {
        var hashTable = self.existedSubscriptionNumber(subscriptionNumber:subscriptionNumber)
        if hashTable == nil{ // 如果不存在，创建对象
            hashTable = NSHashTable.weakObjects()
            _subscriptionDictionary[subscriptionNumber] = hashTable
        }
    }
    
    
    /// 移除订阅号
    ///
    /// - Parameter subscriptionNumber: 订阅号码
    func removeSubscriptionNumber(subscriptionNumber:String) {
        let hashTable = self.existedSubscriptionNumber(subscriptionNumber:subscriptionNumber)
        if hashTable != nil { // 如果存在，移除对象
            _subscriptionDictionary.removeValue(forKey: subscriptionNumber)
        }
    }
    
    // MARK: 维护客户信息
    /// 添加客户到具体的订阅号当中 （客户与订阅号绑定 ）
    ///
    /// - Parameters:
    ///   - customer: 客户 SubscriptionServiceCenterProtocol 只有满足条件的客户才能订阅
    ///   - withSubscriptionNumber: 订阅号码
     func addCustomer(customer:SubscriptionServiceCenterProtocol,subscriptionNumber:String) {
        let hashTable = self.existedSubscriptionNumber(subscriptionNumber:subscriptionNumber)
        hashTable?.add(customer as AnyObject)
    }
    
    /// 从具体的订阅号当中移除客户 （取消客户与订阅号绑定 ）
    ///
    /// - Parameters:
    ///   - customer: 客户
    ///   - withSubscriptionNumber: 订阅号码
    func removeCustomer(customer:SubscriptionServiceCenterProtocol,subscriptionNumber:String) {
        let hashTable = self.existedSubscriptionNumber(subscriptionNumber:subscriptionNumber)
        hashTable?.remove(customer as AnyObject)
    }
    
    // MARK: 发送消息
    /// 发送消息到具体的订阅号当中
    ///
    /// - Parameters:
    ///   - message: 消息
    ///   - toSubscriptionNumber: 订阅号码
    func sendMessage(message:AnyObject,toSubscriptionNumber subscriptionNumber:String) {
         let hashTable = self.existedSubscriptionNumber(subscriptionNumber:subscriptionNumber)
        if hashTable != nil {
            let enumerator = hashTable?.objectEnumerator()
            while let value = enumerator?.nextObject() {
                let objPrototal = value as! SubscriptionServiceCenterProtocol
                objPrototal.subscriptionMessage(message: message, subscriptiomNumber: subscriptionNumber)
            }
            
        }
    }
    
    
    // MARK: 私有方法
    
    /// 验证订阅号是否存在
    ///
    /// - Parameter subscriptionNumber: 订阅号
    /// - Returns: 返回  客户存在的订阅
    fileprivate func existedSubscriptionNumber(subscriptionNumber:String) -> NSHashTable<AnyObject>?{
        
        return _subscriptionDictionary[subscriptionNumber]
        
    }
    
    
    
}
