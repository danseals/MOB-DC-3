//
//  ViewController.swift
//  AIM
//
//  Created by Dan Seals on 6/22/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
        setupButtons()

     
    }
    
    func setupTextFields() {
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
        formatTextField(nameField)
        formatTextField(ageField)
        formatTextField(sexField)
        formatTextField(locationField)
        
        //        nameField.keyboardType = UIKeyboardType.Default
        //        // You do not need to type "UIKeyboardType" because Swift knows
        //        ageField.keyboardType = .NumberPad
        //        sexField.keyboardType = .Default
        //        locationField.keyboardType = .Default
    }
    
    func formatTextField(textField: UITextField) {
        textField.keyboardType = (textField == ageField) ? .NumberPad : .ASCIICapable
        textField.textColor = (textField == sexField) ? .redColor() : .blueColor()
    }
    
    
    
    
    func fieldKeyboardType(field: UITextField) -> UIKeyboardType {
        let keyboardType: UIKeyboardType = (field == ageField) ? .NumberPad : .ASCIICapable
        return keyboardType
    }

    func setupButtons() {
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
    }
    @IBAction func submitAction(sender: UIButton) {
//        if let wnd = self.view{
//            
//            var v = UIView(frame: wnd.bounds)
//            v.backgroundColor = UIColor.blueColor()
//            v.alpha = 1
//            
//            wnd.addSubview(v)
//            UIView.animateWithDuration(0.5, animations: {
//                v.alpha = 0.0
//                }, completion: {(finished:Bool) in
////                    println("inside")
//                    v.removeFromSuperview()
//            })
//        }


    }
    @IBAction func clearAction(sender: UIButton) {
        var refreshAlert = UIAlertController(title: "Refresh", message: "All data will be lost.", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
            self.nameField.text = nil
            self.ageField.text = nil
            self.sexField.text = nil
            self.locationField.text = nil
            if let wnd = self.view{
                
                var v = UIView(frame: wnd.bounds)
                v.backgroundColor = UIColor.redColor()
                v.alpha = 1
                
                wnd.addSubview(v)
                UIView.animateWithDuration(0.3, animations: {
                    v.alpha = 0.0
                    }, completion: {(finished:Bool) in
                        //                    println("inside")
                        v.removeFromSuperview()
                })
            }

            println("Handle Ok logic here")
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
            println("Handle Cancel Logic here")
        }))
        
        presentViewController(refreshAlert, animated: true, completion: nil)
        
        
        
            }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showProfile" {
            let destinationVC = segue.destinationViewController as! ProfileViewController
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.sex = sexField.text
            destinationVC.location = locationField.text
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

