//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by gianluca posca on 31/05/21.
//  Copyright © 2021 App Gianluca Po. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float,weight:Float) -> String {
        let bmiValue : Float = (weight/(height*height))
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.3828125, green: 0.8204195205, blue: 1, alpha: 1))
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.6148123741, green: 0.1017967239, blue: 0.1002308354, alpha: 1))
        }
        
        return String(format:"%.1f",(weight/(height*height)))
    }
    
}
