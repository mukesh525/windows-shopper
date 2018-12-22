//
//  CurrencyTextFeild.swift
//  windows-shopper
//
//  Created by Mukesh Jha on 12/22/18.
//  Copyright © 2018 Mukesh Jha. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextFeild: UITextField {

    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let currencylbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-size/2, width: size, height: size))
        currencylbl.backgroundColor = #colorLiteral(red: 0.6658082604, green: 0.6609976292, blue: 0.6694930196, alpha: 0.7589953785)
        currencylbl.textAlignment = .center
        currencylbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencylbl.layer.cornerRadius = 5.0
        currencylbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencylbl.text = formatter.currencySymbol
      
        addSubview(currencylbl)
    }
    
    override func prepareForInterfaceBuilder() {
       customiseView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
       customiseView()
       
    }
    

    
    func customiseView (){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius=5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [ .foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
