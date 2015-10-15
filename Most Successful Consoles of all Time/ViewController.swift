//
//  ViewController.swift
//  Most Successful Consoles of all Time
//
//  Created by Eric S. Hopkins on 10/13/15.
//  Copyright © 2015 Eric S. Hopkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box1outlet: UITextField!
    @IBOutlet weak var box2outlet: UITextField!
    @IBOutlet weak var box3outlet: UITextField!
    @IBOutlet weak var box4outlet: UITextField!
    @IBOutlet weak var box5outlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let mainpath = NSBundle.mainBundle().pathForResource("textboxinfo", ofType: "plist") else {
        
            print("The Plist Path is Invalid")
            return
        }
        
        var readdata = NSDictionary(contentsOfFile: mainpath) as? Dictionary<String, String>
        
        box1outlet.text = readdata?["box1data"]
        box2outlet.text = readdata?["box2data"]
        box3outlet.text = readdata?["box3data"]
        box4outlet.text = readdata?["box4data"]
        box5outlet.text = readdata?["box5data"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

