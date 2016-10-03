//
//  SettingsViewController.swift
//  AC3.2-GesturesAndControls
//
//  Created by Jason Gresh on 9/29/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var colorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!

    @IBAction func colorSegment(_ sender: UISegmentedControl) {
    }
    @IBAction func colorStepper(_ sender: AnyObject) {
    }
    @IBAction func colorSwitch(_ sender: UISwitch) {
        if sender.isOn {
            
        }
        else {
            
        }
    }
    @IBOutlet weak var colorPreview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gvc = segue.destination as? GesturesViewController {
            gvc.correctColorValue = Double(colorSlider.value)
            gvc.correctColorValueTwo = Double(greenColorSlider.value)
            gvc.correctColorValueThree = Double(blueColorSlider.value)
        }
    }
}
