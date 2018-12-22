//
//  Wage.swift
//  windows-shopper
//
//  Created by Mukesh Jha on 12/22/18.
//  Copyright © 2018 Mukesh Jha. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(foWage wage:Double,andPrice price:Double) -> Int{
        return Int(ceil(price/wage))
        
    }
  
}
