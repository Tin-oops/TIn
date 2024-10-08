//
//  ViewController.swift
//  Calculator
//

import UIKit

class calculator: UIViewController {
    
    //--------------------------------//
    // Constants and Varibles
    var result: Double = 0.0
    var preResult: Double = 0.0
    var formula: String = ""
    
    //--------------------------------//
    // Outlets
    // A tip to check data type
    // lblResult.text = String(describing: type(of: sender.titleLabel!.text!))

    @IBOutlet weak var lblFormula: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet var formulaBtns: [UIButton]!
    
    
    //--------------------------------//
    // Formula Button Action
    // A tip to check data type
    // lblResult.text = String(describing: type(of: sender.titleLabel!.text!))
    
    @IBAction func clickBtn0(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn1(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn2(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn3(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn4(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn5(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn6(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn7(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn8(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtn9(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnDot(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnPlus(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnMinus(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnMultiply(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickBtnDivide(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickLeftParenthesis(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }
    
    @IBAction func clickRightParenthesis(_ sender: UIButton) {
        clickBtnRelatedToFormula(sender)
    }

    
    @IBAction func clickBtnEqual(_ sender: UIButton) {
        calculateResult()
    }
    
    @IBAction func clickBtnAllClear(_ sender: UIButton) {
        allClear()
    }
    
    @IBAction func clickBtnDeleteLast(_ sender: UIButton) {
        removeLastCharacter()
    }
    

    
    @objc func clickBtnRelatedToFormula(_ sender: UIButton) {
        addToFormula(sender.titleLabel!.text!)
    }
    // +
    func addToFormula(_ str: String) {
        formula += str
        lblFormula.text = formula
    }

    func removeLastCharacter() {
        if formula == "" {
            return
        }
        formula.removeLast()
        lblFormula.text = formula
    }

    func evaluateFormula(_ formula: String) -> Double? {
        let expression = NSExpression(format:formula)
        let value = expression.expressionValue(with: nil, context: nil) as? Double
        return value
    }

    func calculateResult() {
        if let result = evaluateFormula(formula) {
            self.result = result
            lblResult.text = String(result)
            print("\(formula) = \(result)")
        }
    }

    func allClear() {
        result = 0.0
        preResult = 0.0
        formula = ""
        lblFormula.text = formula
        lblResult.text = String(result)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for btn in formulaBtns{
            btn.addTarget(self, action: #selector(clickBtnRelatedToFormula(_:)), for: .touchUpInside)
        }
        
    }
}


