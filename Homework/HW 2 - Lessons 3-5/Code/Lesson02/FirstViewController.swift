//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    
//    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    @IBAction func generateText(sender: UIButton) {
//        var hello: String
        textBox.text = "\(helloWorld())\n\(generateNameAge())\n\(checkAge())\n\(additionalCheckAge())"
//
    }
    
    func helloWorld() -> String {
//        textBox.text = "Hello World!"
        return "Hello World!"
        
    }
    
    
//    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    
    func generateNameAge() -> String {
        return "Hello \(name.text), you are \(age.text) years old!"
    }
    
//    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    
    func checkAge() -> String {
        var text = "You're too young for fun!"
        if let age = age.text.toInt() {
            if (age >= 21) {
                text = "You can drink"
            }
            else if (age >= 18) {
                text = "You can vote"
            }
            else if (age >= 16) {
                text = "You can drive"
            }
        }
        return text
    }
    
    
    
//    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    
    func additionalCheckAge() -> String {
        var text = "You're still too young for fun!"
        // Why won't my code run if I don't set text to something, I cannot set it to nil either!
            if let age = age.text.toInt() {
                if (age >= 21) {
                    text = "You can drive, vote and drink (but not at the same time!)"
                }
                else if (age >= 16) && (age < 18) {
                    text = "You can drive"
                }
                else if (age >= 18) && (age < 21) {
                    text = "You can drive and vote"
                }
                
            }
      return text
    }
}
