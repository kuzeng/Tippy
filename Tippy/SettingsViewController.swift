//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Kuiduan Zeng on 2019/2/3.
//  Copyright © 2019 Kuiduan Zeng. All rights reserved.
//

import UIKit
weak var defaultTipControl: UISegmentedControl!
class SettingsViewController: UIViewController {
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let percentIndex = defaults.integer(forKey: "tip_percent")
       
        
        defaultTipControl.selectedSegmentIndex = percentIndex
    }
    
    @IBAction func onDefaultPercentChanged(sender: AnyObject) {
        let defaults = UserDefaults.standard
        let index = defaultTipControl.selectedSegmentIndex
        
        defaults.set(index, forKey: "tip_percent")
        defaults.synchronize()
    }
    
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
