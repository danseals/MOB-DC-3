//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    let cellID = "cellID"
    var dict = [String: String]()
    var array = [String]()
    // For some reason I cannot make an empty dictionary [String: String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        firstTextField.delegate = self
        secondTextField.delegate = self
        firstTextField.tag = 100
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }
    
    func textFieldShouldReturn(textfield: UITextField) -> Bool {
        if textfield.tag == 100 {
            return true
        }
        else {
            self.view.endEditing(true)
            dict["\(firstTextField.text)"] = "\(secondTextField.text)"
            array.append(firstTextField.text)
            println(dict)
            println(array)
            tableView.reloadData()
            return true
        }
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        cell.textLabel?.text = "\(array[indexPath.row]) \(dict[array[indexPath.row]]!)"

        
//        if let myDict = myDict {
//            cell.textLabel?.text = "\(myDict.key as! String) \(myDict.value as! String)"
//        }
        
//        if let dict = dict {
//            }

        
        
        return cell
    }
}
