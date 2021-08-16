//
//  ViewController.swift
//  Tip$y
//
//  Created by Andrew Saeyang on 8/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - OUTLETS
    @IBOutlet weak var billSubtotalTextField: UITextField!
    @IBOutlet weak var billTaxTextField: UITextField!
    @IBOutlet weak var customTipTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billTotalLabel: UILabel!
    
    
    
    // MARK: - PROPERTIES
    
    
    
    // MARK: - LIFECYCLES
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        view.backgroundColor = .gray
        
    }
    // MARK: - ACTIONS
    
   
    
    @IBAction func tenPercentButtonTapped(_ sender: Any) {
        customTipTextField.text = "10"
    }
    
    @IBAction func fifteenPercentButtonTapped(_ sender: Any) {
        customTipTextField.text = "15"
        
    }
    @IBAction func eighteenPercentButtonTapped(_ sender: Any) {
        customTipTextField.text = "18"
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        calculate()
        
    }
    
    
    
    
}

extension ViewController{
    
    func calculate() {
        
        guard let subtotal = Double(billSubtotalTextField.text ?? "0") else { return }
        
        let tipPercent = Double(customTipTextField.text!) ?? 0.0
        let taxPercent = Double(billTaxTextField.text!) ?? 0.0
        
        let tip = subtotal * tipPercent / 100
        let total = subtotal + (subtotal * taxPercent / 100) + tip
        
        tipAmountLabel.text = "$" + String(format: "%.2f", tip)
        billTotalLabel.text = "$" + String(format: "%.2f", total)
        
    }
}
