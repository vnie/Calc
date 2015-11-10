//
//  ViewController.swift
//  Calc
//
//  Created by Victor Nie on 11/10/15.
//  Copyright © 2015 Victor Nie. All rights reserved.
//

import UIKit

class ViewController: UIViewController { 
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingNumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingNumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingNumber = true
        }
    }
    
}

 