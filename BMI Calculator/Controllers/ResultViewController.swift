//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Jiawei Chen on 4/5/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLable: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var actionLabel: UIButton!
    
    var BMIString: String = ""
    var advice: String?
    var color: UIColor = .white
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bmiLable.text = BMIString
        adviceLabel.text = advice
        view.backgroundColor = color
    }

    
    @IBAction func recalPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
