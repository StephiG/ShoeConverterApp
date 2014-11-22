//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Stephi Goering on 21/11/14.
//  Copyright (c) 2014 Stephi Goering. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((mensShoeSizeTextField.text as NSString).doubleValue)
        let convertionConstant = 33.5
        
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField)" + " converts to " + "\(sizeFromTextField + convertionConstant)" + " in European shoe size"
        
        
        mensShoeSizeTextField.text = ""
        mensShoeSizeTextField.resignFirstResponder()
      
    }
    

    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let convertionConstant = 30.5
        
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField)" + " converts to " + "\(sizeFromTextField + convertionConstant)" + " in European shoe size"
        
        
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.resignFirstResponder()

        
    }

}

