//
//  ViewController.swift
//  midterm
//
//  Created by Dan Seals on 7/15/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
        var isTypingNumber = false
        var firstNumber:Double!
        var secondNumber:Double!
        var operation = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        firstNumber = 0
        secondNumber = 0
        
    }

    @IBAction func numberPress(sender: UIButton) {
        
        var number = convertToInt(sender.titleLabel!.text!)
        
        if isTypingNumber {
            label.text = label.text! + "\(number)"
        } else {
            label.text = "\(number)"
            isTypingNumber = true
        }
        
        println("\(number)")
        
    }
    
    @IBAction func calculationPress(sender: UIButton) {
        isTypingNumber = false
        firstNumber = doubleFromString()
        operation = sender.titleLabel!.text!
        
    }
    
    @IBAction func decimalPress(sender: UIButton) {
        // Need to check if a decimal has already been added, cannot add another.
        let currentValue = label.text!
        let rangeOfDecimalPoint = currentValue.rangeOfString(".")
        
        if rangeOfDecimalPoint == nil {
            label.text = "\(label.text!)."
        }
    }
    
    @IBAction func equalPress(sender: UIButton) {
        isTypingNumber = false
        var result = 0.0
        secondNumber = doubleFromString()
        
        if operation == "add" {
            result = firstNumber + secondNumber
        } else if operation == "subtract" {
            result = firstNumber - secondNumber
        } else if operation == "multiply" {
            result = firstNumber * secondNumber
        } else if operation == "divide" {
            result = firstNumber / secondNumber
        }
        
        label.text = "\(result)"
        
    }
    
    @IBAction func invertPress(sender: UIButton) {
        isTypingNumber = false
        
        if let invert = label.text?.toInt() {
            label.text = "\(-invert)"
        }
    }
    
    @IBAction func percentPress(sender: UIButton) {
        isTypingNumber = false
        
        let percent = doubleFromString()
        label.text = "\(percent/100.0)"
        
    }

    
    @IBAction func clearPress(sender: UIButton) {
        firstNumber = 0
        secondNumber = 0
        label.text = "\(Int(firstNumber))"
    }
    

    func convertToInt(number: String) -> Int {
        let dict = ["zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6, "seven": 7, "eight": 8, "nine": 9]
        return dict["\(number)"]!
    }
    
    func doubleFromString() -> Double {
        let newString = label.text! as NSString
        return newString.doubleValue
    }
}

