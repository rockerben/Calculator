//
//  ViewController.swift
//  Calculator
//
//  Created by ben on 15/08/2016.
//  Copyright © 2016 Voltage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
        let textCurrentlyInDisplay = display.text!
        display.text = textCurrentlyInDisplay + digit
        } else
        {
          display.text = digit
        }
        userIsInTheMiddleOfTyping = true
        }
   
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping  = false
        if let mathematicalSymbol = sender.currentTitle
        {
            if mathematicalSymbol == "π"{
            display.text = String(M_PI) //M_PI
                
        }
    }
    }
    
}


// let = constant

// Optional T?
//    not set 
//    or set

// let digit : type = <<<< type inference
// ! means give me the associated value
// ! crashes if its not set or nil

// not set make it nil

// class must be initialised all the time all properties have to have an initial value

//type inference

//if let = unwrap only of it is set

//autoshrink in interface builder




