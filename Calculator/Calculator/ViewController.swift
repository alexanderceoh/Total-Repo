//
//  ViewController.swift
//  Calculator
//
//  Created by Alex Oh on 9/21/15.
//  Copyright © 2015 Alex Oh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBAction func pressZero(sender: AnyObject) {
    displayLabel.text="0"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

