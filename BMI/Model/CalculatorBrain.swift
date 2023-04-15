//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Damir Zaripov on 15.04.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: UIColor.blue)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Keep up the pace!", color: UIColor.systemGreen)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: UIColor.orange)
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No data"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
