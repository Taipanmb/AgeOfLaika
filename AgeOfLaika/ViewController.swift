//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Martin A. Becker on 29.09.14.
//  Copyright (c) 2014 TaiPanAPPS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var convertedDogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let yearsFromHumanYearsTextField = enterHumanYearsTextField.text.toInt()!
        convertedDogYearsLabel.hidden = false
        let doubleYearsFromHumanYearsTextField = Double (yearsFromHumanYearsTextField)
        
        if yearsFromHumanYearsTextField <= 2 {
            convertedDogYearsLabel.text = "Your " + "\(yearsFromHumanYearsTextField)" + " year old dog is " + "\(doubleYearsFromHumanYearsTextField * 10.5)"
            
        }
            
        else {
            convertedDogYearsLabel.text = "Your " + "\(yearsFromHumanYearsTextField)" + " year old dog is " + "\(((yearsFromHumanYearsTextField - 2) * 4 ) + 21 )"
        }
        
        enterHumanYearsTextField.text = ""
        enterHumanYearsTextField.resignFirstResponder()
    }

}

