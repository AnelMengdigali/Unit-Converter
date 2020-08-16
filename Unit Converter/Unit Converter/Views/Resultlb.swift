//
//  Resultlb.swift
//  Unit Converter
//
//  Created by ggg on 26.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import UIKit

@IBDesignable
class Resultlb: UILabel {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView(){
        
        backgroundColor = #colorLiteral(red: 0.5895469119, green: 0.5895469119, blue: 0.5895469119, alpha: 0.2477992958)
        textAlignment = .center
        
        layer.cornerRadius = 5.0
        clipsToBounds = true //needs to be used for cornerRadius
        
        //checking for nill when the if let is used:
        if let p = text{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedText = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }

}
