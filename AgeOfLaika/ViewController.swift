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
     
    @IBAction func convertButtonPressed(sender: UIButton)
    {
        var yearsFromHumanYearsTextField = enterHumanYearsTextField.text.toInt()!
        let conversionConstant = 7
        convertedDogYearsLabel.hidden = false
        convertedDogYearsLabel.text = "Your " + "\(yearsFromHumanYearsTextField)" + "-year-old dog is " + "\(yearsFromHumanYearsTextField * conversionConstant)"
        enterHumanYearsTextField.text = ""
        enterHumanYearsTextField.resignFirstResponder()
        
    }

}

