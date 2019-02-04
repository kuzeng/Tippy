//
//  ViewController.swift
//  Tippy
//
//  Created by Kuiduan Zeng on 2019/2/2.
//  Copyright © 2019 Kuiduan Zeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        
        let defaults = UserDefaults.standard
        let percentSetting = defaults.integer(forKey: "tip_percent")
        
        tipControl.selectedSegmentIndex = percentSetting
        
        
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
    
        view.endEditing(true)
    }
    @IBAction func calculateTips(_ sender: Any){
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        // Calculate the tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
    }
}

