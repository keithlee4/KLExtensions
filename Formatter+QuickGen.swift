//
//  DateFormatter+QuickGen.swift
//  UniversalModule
//
//  Created by keith.lee on 2016/11/15.
//  Copyright © 2016年 git4u. All rights reserved.
//

import Foundation
extension DateFormatter {
    
    /// Quick generate dateString from specific date of current locale
    ///
    /// - Parameters:
    ///   - date: date
    ///   - format: format
    /// - Returns: dateString
    static func dateString(from date: Date, withFormat format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: date)
    }
    
    
    /// Quick generate date from current locale
    ///
    /// - Parameters:
    ///   - dateString: original date string
    ///   - format: date format
    /// - Returns: parsed date (optional)
    static func date(from dateString: String, withFormat format: String) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.date(from: dateString)
    }
}

extension NumberFormatter {
    
    static func decimalString(fromValue:Double, withDigits digits:Int) -> String? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        ns.numberStyle = .decimal
        
        
        return ns.string(from: NSNumber.init(value: fromValue))
    }

    
    static func decimalString(from number:NSNumber, withDigits digits:Int) -> String? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        ns.numberStyle = .decimal
        
        
        return ns.string(from: number)
    }
    
    static func decimalNoDigitString(from number:NSNumber) -> String? {
        return self.decimalString(from: number, withDigits: 0)
    }
    
    static func numberOfDecimalString(from string:String, withDigits digits:Int) -> NSNumber? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        ns.numberStyle = .decimal
        
        return ns.number(from: string)
    }
    
    static func numberOfNoDigitsDecimalString(from string:String) -> NSNumber? {
        return self.numberOfDecimalString(from: string, withDigits: 0)
    }
}
