//
//  ViewController.swift
//  windows-shopper
//
//  Created by Mukesh Jha on 12/22/18.
//  Copyright © 2018 Mukesh Jha. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var priceTxt: CurrencyTextFeild!
    @IBOutlet weak var wageTxt: CurrencyTextFeild!
    @IBOutlet weak var hpursLbl: UILabel!
    
    @IBOutlet weak var resultLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     let calcBtn = UIButton(frame: CGRect(x: 0, y: 0,width: view.frame.width,
                                          height: 60))
           calcBtn.backgroundColor=#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
           calcBtn.setTitle("Calculate", for: .normal)
           calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
           calcBtn.addTarget(self,   action:#selector(MainVC.calculate),for: .touchUpInside)
        
        
         wageTxt.inputAccessoryView=calcBtn
         priceTxt.inputAccessoryView=calcBtn
        resultLbl.isHidden = true
        hpursLbl.isHidden = true
        
    }
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        resultLbl.isHidden=true
        hpursLbl.isHidden=true
        wageTxt.text=""
        priceTxt.text=""
    }
    
    @objc func calculate (){
        if let wageTxt = wageTxt.text, let priceText = priceTxt.text{
            if let wage = Double(wageTxt),let price = Double(priceText){
                view.endEditing(true)
                resultLbl.isHidden = false
                hpursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(foWage: wage, andPrice: price))"
            }
        }
        
    }

    
}

