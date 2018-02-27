//
//  ViewController.swift
//  AdapterPatten
//
//  Created by GujyHy on 2018/1/2.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cardView    = CardView(frame: CARDVIEW_FRAME)
        cardView.center = self.view.center
        self.view.addSubview(cardView)
        
//        // 以对象赋值
//        let model:Model   = Model()
//        model.name        = "xioakan的适配器模式"
//        model.phoneNumber = "13819223333"
//        model.lineColor   = UIColor.red
        
        
        // 适配器模式
        let model:Model   = Model()
        model.name        = "xioakan的适配器模式"
        model.phoneNumber = "13819223333"
        model.lineColor   = UIColor.red
        
//        let Adapter = ModelAdapter(model)
//        cardView.loadData(Adapter)
        
        let newModel:NewCardModel   = NewCardModel()
        newModel.name        = "xioakan"
        newModel.phoneNumber = "13819223333"
        newModel.colorHexString   = "black"
//        // 与输入对象建立联系
//        let newAdapter = NewCardModelAdapter(newModel)
//        // 与输入对象建立联系
//        cardView.loadData(newAdapter)
        
        // 对象模式
        let cardAdapter = CardAdapter(model)
//        let cardAdapter = CardAdapter(newModel)
        cardView.loadData(cardAdapter)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

