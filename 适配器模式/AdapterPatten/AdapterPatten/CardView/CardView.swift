//
//  CardView.swift
//  AdapterPatten
//
//  Created by GujyHy on 2018/1/2.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

let CARDVIEW_FRAME  = CGRect(x: 10, y: 10, width:300, height:80)

class CardView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.black.cgColor
        
        self.addSubview(self.nameLabel)
        self.addSubview(self.phoneNumberLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Public
//    func loadData(_ data:Model){
//
//        nameLabel.text = data.name
//        phoneNumberLabel.text = data.phoneNumber
//        if data.lineColor != nil {
//            self.layer.borderColor = data.lineColor?.cgColor
//        }
//    }
    func loadData(_ data:CardAbstractAdapter){
        nameLabel.text = data.name()
        phoneNumberLabel.text = data.phoneNumber()
        if data.lineColor() != nil {
            self.layer.borderColor = data.lineColor()?.cgColor
        }
    }
    
    
    // MARK: Lazy
    lazy var nameLabel:UILabel = {
        let label             = UILabel(frame: CGRect(x: 10, y: 10, width: self.frame.size.width, height:10))
        label.textColor       = UIColor.black
        label.backgroundColor = UIColor.clear
        label.font            = UIFont.systemFont(ofSize: 14)
        label.textAlignment   = NSTextAlignment.left
        return label
    }()
    
    lazy var phoneNumberLabel:UILabel = {
        let label             = UILabel(frame: CGRect(x: 10, y: 30, width: self.frame.size.width, height:10))
        label.textColor       = UIColor.black
        label.backgroundColor = UIColor.clear
        label.font            = UIFont.systemFont(ofSize: 12)
        label.textAlignment   = NSTextAlignment.left
        return label
    }()
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
