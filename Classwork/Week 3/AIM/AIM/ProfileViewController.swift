//
//  ProfileViewController.swift
//  AIM
//
//  Created by Dan Seals on 6/22/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var name: String?
    var age: String?
    var sex: String?
    var location: String?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            nameLabel.text = name
            nameLabel.textColor = UIColor.blueColor()
        }
        
        if let age = age {
            ageLabel.text = age
            ageLabel.textColor = UIColor.blueColor()
        }
        
        if let sex = sex {
            sexLabel.text = sex
            sexLabel.textColor = UIColor.redColor()
        }
        
        if let location = location {
            locationLabel.text = location
            locationLabel.textColor = UIColor.blueColor()
        }

        // Do any additional setup after loading the view.
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
