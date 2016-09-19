//
//  ViewController.swift
//  Temperaturrechner
//
//  Created by Christian Bleske on 12.10.14.
//  Copyright (c) 2014 Christian Bleske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldInput: UITextField!
    @IBOutlet var laCelsius: UILabel!
    @IBOutlet var laFahrenheit: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPressed(_ sender: AnyObject) {
        var c_out=0.0
        var f_out=0.0
        var inputValue=0.0
        
        let txtInput = NSString(string: textFieldInput.text!)
        inputValue = txtInput.doubleValue
        
        c_out = (inputValue-32)*5/9
        f_out = inputValue * 1.8 + 32
        
        self.laCelsius.text = NSString(format:"%3.2f",c_out) as String
        self.laFahrenheit.text = NSString(format:"%3.2f",f_out) as String
    }

}

