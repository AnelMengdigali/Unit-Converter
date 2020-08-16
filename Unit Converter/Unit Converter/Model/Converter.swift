//
//  Converter.swift
//  Unit Converter
//
//  Created by ggg on 26.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import Foundation

class Converter{
    
    class func getKM( forConvert input: Double) -> Double {
        
        let base = 1.609344
        return Double(round(10000*(input * base))/10000)
        
    }
    
    class func getML( forConvert input: Double) -> Double {
        
        let base = 1.609344
        return Double(round(10000*(input / base))/10000)
        
    }
    
    class func getKG( forConvert input: Double) -> Double {
        
        let base = 0.453592
        return Double(round(10000*(input * base))/10000)
        
    }
    
    class func getPD( forConvert input: Double) -> Double {
        
        let base = 0.453592
        return Double(round(10000*(input / base))/10000)
        
    }
    
}
