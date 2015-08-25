//
//  ViewController.swift
//  tips
//
//  Created by Bhaskar Maddala on 8/24/15.
//  Copyright © 2015 Bhaskar Maddala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipPercentagesControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        totalLabel.text = "$0.00"
        tipLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func onBillAmountChanged(sender: AnyObject) {
        let tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipPercentagesControl.selectedSegmentIndex]
        guard let amtStr = billField.text else { return }
        let amt = (amtStr as NSString).doubleValue
        let tip = amt * tipPercentage
        let total = amt + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

