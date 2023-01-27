//
//  TipViewController.swift
//  Tipsy
//
//  Created by Adrian Senften on 26.01.23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    var splits: Int?
    var billPerPerson: Float?
    var tip: String?

    @IBOutlet weak var splitTextField: UILabel!
    
    @IBOutlet weak var totalPerPerson: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPerson.text = String(format: "%.0f", billPerPerson!)
        splitTextField.text = "Split between \(splits!) people, with \(tip!) tip."
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
