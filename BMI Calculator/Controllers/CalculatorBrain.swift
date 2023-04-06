//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Jiawei Chen on 4/5/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func getBMIVal(height: Float, weight: Float) {
        let BMIVal = weight / pow(height, 2)
        
        bmi = BMI(val: BMIVal)
    }
    
    func returnResult() -> String {
        return bmi?.value ?? "Not calculated"
    }
    
    func returnAdvice() -> String {
        return bmi?.advice ?? "Not calculated"
    }
    
    func returnColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
