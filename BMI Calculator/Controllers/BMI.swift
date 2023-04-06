//
//  BMI.swift
//  BMI Calculator
//
//  Created by Jiawei Chen on 4/5/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMI {
    var value: String
    var advice: String
    var color: UIColor
    init(val: Float) {
        self.value = String(format: "%.1f", val)
        if val < 18.5 {
            advice = "Eat more"
            color = .blue
        } else if val <= 24.9 {
            advice = "Fit as a fiddle"
            color = .green
        } else {
            advice = "Eat less"
            color = .red
        }
    }
}
