//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var tipCalc = TipCalc()
    var tipPercentage: String = "10%"
    var billAmount = "10"
    var splits:Int = 2
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tip0: UIButton!
    @IBOutlet weak var tip10: UIButton!
    @IBOutlet weak var tip20: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var splitAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipPercentage(_ sender: UIButton) {
        billAmountTextField.endEditing(true)
        tip0.isSelected = false
        tip10.isSelected = false
        tip20.isSelected = false
        sender.isSelected = true
        tipPercentage = sender.currentTitle ?? "10%"
    }
    
    
    @IBAction func splitStepper(_ sender: UIStepper) {
        splits = Int(sender.value)
        splitAmount.text = String(format: "%.0f", sender.value)
//        print(splits)
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        billAmount = billAmountTextField.text ?? "10"
//        print(tipPercentage)
//        print(billAmount)
        tipCalc.calculateTip(bill: billAmount, tipPercentage: tipPercentage, split: Double(splits))
//        print(tipCalc.billPerPerson)
        self.performSegue(withIdentifier: "GoToBill", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToBill" {
            let destinationVC = segue.destination as! TipViewController
            destinationVC.splits = splits
            destinationVC.billPerPerson = tipCalc.billPerPerson
            destinationVC.tip = tipPercentage
        }
    }
}

