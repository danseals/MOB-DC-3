//
//  ViewController.swift
//  Lesson 5 Code Along
//
//  Created by LOANER on 6/17/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var generateButton: UIButton!
    
    var numberOfTimes = 0
    var factBook = Factbook()
    var colorwheel = Colorwheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        factLabel.text = "Hello"
    }
    
    @IBAction func generateFact(sender: UIButton) {
//        ++numberOfTimes
        let randomFact = factBook.randomFact()
        factLabel.text = randomFact
        
        let randomColor = colorwheel.randomColor()
        view.backgroundColor = randomColor
        
        generateButton.setTitleColor(randomColor, forState: UIControlState.Normal)
    }

}

