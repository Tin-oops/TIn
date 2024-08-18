//
//  BMI.swift
//  Movies
//
//  Created by Thuy Pham lam on 8/18/24.
//

import UIKit
class BMI: UIViewController {




    @IBOutlet weak var check: UILabel!
    

@IBOutlet weak var heightText: UITextField!
@IBOutlet weak var weightText: UITextField!
@IBOutlet weak var resultLabel: UILabel!


    @IBAction func calculate(_ sender: Any) {
        guard let weightText = weightText.text, let weight = Double(weightText),
              let heightText = heightText.text, let height = Double(heightText), height > 0 else {
            resultLabel.text = "Invalid input"
            return
        }
        
        let bmi = weight / (height * height)
        let bmiString = String(format: "%.2f", bmi)
       resultLabel.text = "Your BMI is \(bmiString)"
        //resultLabel.text = "Your bmi is \(bmi)"
        text()
        
        if bmi < 18.5 {
            check.text = "You're underweight"
        } else if bmi >= 18.5 && bmi <= 24.9 {
            check.text = "You're normal weight"
        } else if bmi >= 25.0 && bmi <= 29.9 {
            check.text = "You're overweight"
        } else {
            check.text = "You're obese"
        }
        
        
        
        
}

    func text() {
        print(" gg")
    }
    


override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.backgroundColor = .white
}

}


