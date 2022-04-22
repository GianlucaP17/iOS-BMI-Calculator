//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Gianluca Po on 21/08/2019.
//  Copyright © 2019 App Gianluca Po. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChanging(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    @IBAction func weightSliderChanging(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destVC = segue.destination as! ResultViewController
            destVC.bmiValue = calculatorBrain.calculateBMI(height:heightSlider.value,weight:weightSlider.value)
            destVC.bmiAdvice = calculatorBrain.bmi?.advice
            destVC.bmiColor = calculatorBrain.bmi?.color
        }
    }
}

