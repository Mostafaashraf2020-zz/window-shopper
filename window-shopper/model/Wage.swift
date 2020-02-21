//
//  Wage.swift
//  window-shopper
//
//  Created by Mostafa Ashraf on 2/19/20.
//  Copyright © 2020 Mostafa Ashraf. All rights reserved.
//

import Foundation
class Wage {
    
    class func getHours(forWage wage : Double , andprice price : Double ) -> Int
    {
        
        return Int(ceil(price/wage))	
    }
    
}
