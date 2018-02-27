//
//  CardAdapter.swift
//  AdapterPatten
//
//  Created by GujyHy on 2018/1/2.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class CardAdapter: CardAbstractAdapter {

 
    
    override func name() -> String {
        
        if (self.data?.isKind(of: Model.self))!{
            
            let model:Model = self.data as! Model
            return model.name
            
        }else if (self.data?.isKind(of: NewCardModel.self))!{
            
            let model:NewCardModel = self.data as! NewCardModel
            return model.name
            
        }else{
            
            return super.name()
        }
    }
    
    override func phoneNumber() -> String {
    
        if (self.data?.isKind(of: Model.self))!{
            
            let model:Model = self.data as! Model
            return model.phoneNumber
            
        }else if (self.data?.isKind(of: NewCardModel.self))!{
            
            let model:NewCardModel = self.data as! NewCardModel
            return model.phoneNumber
            
        }else{
            
            return super.phoneNumber()
        }
        
     
    }
    override func lineColor() -> UIColor? {
        
        if (self.data?.isKind(of: Model.self))!{
            
            let model:Model = self.data as! Model
            return model.lineColor
            
        }else if (self.data?.isKind(of: NewCardModel.self))!{
            
            let model:NewCardModel = self.data as! NewCardModel
            // todo
            if model.colorHexString == "black" {
                return .black
            }else{
                return .red
            }
            
        }else{
            
            return super.lineColor()
        }
    }
    
}
