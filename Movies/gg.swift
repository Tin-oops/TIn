//
//  gg.swift
//  Movies
//
//  Created by Thuy Pham lam on 8/18/24.
//

import UIKit
class Gg: UIViewController {
    
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var weightText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func calculate(_ sender: UIButton) {
        guard let weightText = weightText.text, let weight = Float(weightText),
              let heightText = heightText.text, let height = Float(heightText) else {
            resultLabel.text = "Invalid input"
            return
        }
        let bmi = weight / (height * height)
        resultLabel.text = "Your BMI is \(String(format: "%.2f", bmi))"
        
    }

    
  
    

    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    
    
    
    
}
