//
//  ViewController.swift
//  FilesAndPersistence
//
//  Created by Dan Seals on 7/22/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieField: UITextField!
    let movieID = "movieID"
    let defaults = NSUserDefaults.standardUserDefaults()
    var movies = [String]()
    
    
    @IBAction func submitMovie(sender: UIButton) {
        movies.append(movieField.text)
        defaults.setObject(movies, forKey: movieID)
        println(movies)

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

