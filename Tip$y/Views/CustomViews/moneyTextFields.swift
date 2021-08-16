//
//  moneyTextFields.swift
//  Tip$y
//
//  Created by Andrew Saeyang on 8/16/21.
//

import UIKit

class MoneyTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        self.textColor = .blue
        
    }
    
}
