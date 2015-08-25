//
//  DefaultTipsViewController.swift
//  tips
//
//  Created by Bhaskar Maddala on 8/25/15.
//  Copyright © 2015 Bhaskar Maddala. All rights reserved.
//

import UIKit

class DefaultTipsViewController: UIViewController {

    @IBOutlet weak var defaultTipsPercentagesControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let index = defaults.integerForKey("tips_index")
        defaultTipsPercentagesControl.selectedSegmentIndex = index
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEnter(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let index = defaultTipsPercentagesControl.selectedSegmentIndex
        defaults.setInteger(index, forKey: "tips_index")
        defaults.synchronize()
        dismissViewControllerAnimated(true, completion: nil)
    }
}
