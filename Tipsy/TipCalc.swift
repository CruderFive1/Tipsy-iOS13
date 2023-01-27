//
//  TipCalc.swift
//  Tipsy
//
//  Created by Adrian Senften on 26.01.23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct TipCalc {
    
    var billPerPerson: Float = 0.00
    var tip = 0.00
    
    mutating func calculateTip(bill: String, tipPercentage: String, split: Double) {
        let bill = bill
        let billD = (bill as NSString).doubleValue
        
        if tipPercentage == "10%" {
            tip = billD / 100 * 10
        } else if tipPercentage == "20%" {
            tip = billD / 100 * 20
        } else {
            tip = 0.00
        }
        
        billPerPerson = Float((billD + tip) / split)
        
//        print(tip)
    }
    
}
