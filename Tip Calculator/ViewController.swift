//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Hartley, Keira on 2019-10-10.
//  Copyright © 2019 Hartley, Keira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    
    @IBOutlet weak var tipPerPerson: UILabel!
    @IBOutlet weak var tipTotal: UILabel!
    @IBOutlet weak var buttonCalculate: UIButton!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var billAmount: UITextField!
    
    //MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let amountDecimal = Double(billAmount.text!)!
        let tipDecimal = Double(tipPercent.text!)!
        let numberOfPeopleDecimal = Double(numberOfPeople.text!)!
      
        let calculateTip = amountDecimal*(tipDecimal/100)
        
        let calculatePerPerson = calculateTip/numberOfPeopleDecimal
        
        tipTotal.text = String(calculateTip)
        
        tipPerPerson.text = String(calculatePerPerson)
        
    }
    
    



}

