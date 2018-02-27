//
//  ViewController.swift
//  CommondPatten
//
//  Created by GujyHy on 2017/12/18.
//  Copyright © 2017年 GujyHy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let buttonOn = UIButton()
        buttonOn.frame = CGRect(x:20,y:100,width:100,height:50)
        buttonOn.backgroundColor = .blue
        buttonOn.setTitle("打开电视剧", for: .normal)
        buttonOn.addTarget(self, action: #selector(buttonOnClicked), for: .touchUpInside)
        self.view.addSubview(buttonOn)
        
        
        let buttonOff = UIButton()
        buttonOff.frame = CGRect(x:20,y:200,width:100,height:50)
        buttonOff.backgroundColor = .blue
        buttonOff.setTitle("关闭电视剧", for: .normal)
        buttonOff.addTarget(self, action: #selector(buttonOffClicked), for: .touchUpInside)
        self.view.addSubview(buttonOff)
        
        let buttonChange = UIButton()
        buttonChange.frame = CGRect(x:20,y:300,width:100,height:50)
        buttonChange.backgroundColor = .blue
        buttonChange.setTitle("change电视剧", for: .normal)
        buttonChange.addTarget(self, action: #selector(buttonChangeClicked), for: .touchUpInside)
        self.view.addSubview(buttonChange)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func buttonOnClicked(_ button:UIButton) {
        let invoker = Invoker.sharedInstance
        let receiver = ReceiverTelevision()
        let commandOn = CommandOn(receiver)
        invoker.addAndExcute(param: commandOn)
    }

    @objc func buttonOffClicked(_ button:UIButton) {
        let invoker = Invoker.sharedInstance
        let receiver = ReceiverTelevision()
        let commandOff = CommandOff(receiver)
        invoker.addAndExcute(param: commandOff)
    }
    
    @objc func buttonChangeClicked(_ button:UIButton) {
        let invoker = Invoker.sharedInstance
        let receiver = ReceiverTelevision()
        let commandChange = CommandChange(receiver)
        commandChange.change = 10
        invoker.addAndExcute(param: commandChange)
    }
}

