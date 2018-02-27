//
//  ViewController.swift
//  StrategyPattens
//
//  Created by GujyHy on 2018/1/3.
//  Copyright © 2018年 GujyHy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        // 鸭子案例
//        let yeDuck = YeDuck()
//        yeDuck.flyI = FlyWithWing()
//        yeDuck.quackI = QuackWithGuaGua()
//        yeDuck.performFly()
//        yeDuck.performQuack()
//
//
//        let modelDuck = ModelDuck()
//        modelDuck.flyI = FlyWithRocket()
//        modelDuck.quackI = QuackWithJiJi()
//        modelDuck.performFly()
//        modelDuck.performQuack()
        
        
        // 验证文本框的案例
        
        let textField = CustomField(frame: CGRect(x: 10, y: 50, width: 300, height: 40))
        textField.delegate = self
        textField.placeholder = "请输入 Email 文字"
        textField.layer.borderColor = UIColor.red.cgColor
        textField.layer.borderWidth = 0.5
        textField.inputValidate = EmailValidate()
        self.view.addSubview(textField)
        
        
        let phoneField = CustomField(frame: CGRect(x: 10, y: 120, width: 300, height: 40))
        phoneField.delegate = self
        phoneField.placeholder = "请输入 Phone 文字"
        phoneField.layer.borderColor = UIColor.blue.cgColor
        phoneField.layer.borderWidth = 0.5
        phoneField.inputValidate = PhoneValidate()
        self.view.addSubview(phoneField)
        
    }

   
    // MARK: UITextFieldDelegate
    func textFieldDidEndEditing(_ textField: UITextField) {
        let customField = textField as! CustomField
        if customField.validate() == false{ // 验证失败
            print((customField.inputValidate?.errorMessage)!)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   
    }


}

