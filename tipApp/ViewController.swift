//
//  ViewController.swift
//  tipApp
//
//  Created by Feizza Fazilatun on 11/13/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        //Calculate tip amount
        let tip = bill * 0.1
        let total = bill + tip
        
        //Update tip and total labels
        tipLabel.text = String(format: "$%.2f",  tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

//temp
