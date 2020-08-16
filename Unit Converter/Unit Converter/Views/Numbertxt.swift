//
//  Numbertxt.swift
//  Unit Converter
//
//  Created by ggg on 26.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import UIKit

@IBDesignable
class Numbertxt: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView(){
        
        backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.2039502641)
        textAlignment = .center
        
        layer.cornerRadius = 5.0
        clipsToBounds = true //needs to be used for cornerRadius
        
        //checking for nill when the if let is used:
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
}
