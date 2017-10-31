//
//  ResultViewController.swift
//  MyCalc
//
//  Created by Takagi Yuki on 2017/11/01.
//  Copyright © 2017年 Takagi Yuki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var price: Int = 0
    var percent: Int = 0
    
    @IBOutlet weak var resultField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        let percentValue = Float(percent) / 100
        
        let waribikiPrice =  Float(price) * percentValue
        
        let percentOffPrice = price - Int(waribikiPrice)
        
        resultField.text = "\(percentOffPrice)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
