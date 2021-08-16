//
//  moneyButtons.swift
//  Tip$y
//
//  Created by Andrew Saeyang on 8/16/21.
//

import UIKit

class MoneyButtons: UIButton{
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView(){
        self.addCornerRadius(radius: self.frame.height/2)
        self.layer.masksToBounds = true
        self.setTitleColor(.black, for: .normal)
        self.backgroundColor = .purple
    }
    
}

