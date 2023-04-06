//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.getBMIVal(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    @IBAction func heightSliderMoved(_ sender: UISlider) {
        heightLabel.text = String(format:"%.2fm", sender.value)
    }
    
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        weightLabel.text = String(format:"%.0fkg", sender.value)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController //Downcasting
            destinationVC.BMIString = calculatorBrain.returnResult()
            destinationVC.advice = calculatorBrain.returnAdvice()
            destinationVC.color = calculatorBrain.returnColor()
        }
        
    }
}

