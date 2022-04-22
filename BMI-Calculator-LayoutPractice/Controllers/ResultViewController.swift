//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by gianluca posca on 31/05/21.
//  Copyright © 2021 App Gianluca Po. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //optional perchè non so il val iniziale
    var bmiValue : String?
    var bmiAdvice : String?
    var bmiColor : UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
