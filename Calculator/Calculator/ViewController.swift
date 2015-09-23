//
//  ViewController.swift
//  Calculator
//
//  Created by Alex Oh on 9/21/15.
//  Copyright © 2015 Alex Oh. All rights reserved.
//

import UIKit

var number1 = ""
var number2 = ""
var operation: OperationType?

//Change the sign +/-
//Remove the decimal if .0

//Medium:
//add label on left side of display to show current operation
//
//Hard:
//make decimal button work


class ViewController: UIViewController {

    
    @IBOutlet weak var displayOperation: UILabel!

    
    @IBOutlet weak var displayLabel: UILabel!

    @IBAction func numberPressed(button: UIButton) {
        
        let num = button.titleLabel!.text!
        
        if operation == nil {
            
            number1 += num
            displayLabel.text = number1
            
        } else {
            
            number2 += num
            displayLabel.text = number2
            
        }
    }
    
    @IBAction func clear() {
    
        number1 = ""
        number2 = ""
        operation = nil
        displayLabel.text = "0"
        displayOperation.text = ""
    }
    
    @IBAction func changeSign() {
        
        if operation == nil {
            
            let value = -1 * Double(number1)!
            
            number1 = "\(value)"
            displayLabel.text = number1
            
        } else {
            
            let value = -1 * Double(number2)!
            
            number2 = "\(value)"
            displayLabel.text = number2
        }
        
        
    }
    
    @IBAction func setOperation(button: UIButton) {
        
        let opSign = button.titleLabel!.text!
        
        operation = OperationType(rawValue: opSign)
        
        displayOperation.text = opSign
    }
    
    @IBAction func runOperation() {
        
        let num1 = Double(number1)
        let num2 = Double(number2)
        
        let total = calculateNumbers(n1: num1!, n2: num2!, operation: operation!)
        
        if total % 1 == 0 {
            
            displayLabel.text = "\(Int(total))"
            
        } else {
            
            number1 = "\(total)"
            
            displayLabel.text = "\(total)"
            
        }
        
       
        
    }

}

