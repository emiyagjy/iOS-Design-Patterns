//
//  ViewController.swift
//  FlyWeightPatten
//
//  Created by GujyHy on 2018/1/8.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shop = CoffeeShop()
        shop.takeOrder("flavorA", table: 0)
        shop.takeOrder("flavorB", table: 1)
        shop.takeOrder("flavorC", table: 2)
        shop.takeOrder("flavorD", table: 3)
        shop.takeOrder("flavorA", table: 4)
 
        shop.serve()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

