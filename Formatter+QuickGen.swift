//
//  DateFormatter+QuickGen.swift
//  UniversalModule
//
//  Created by keith.lee on 2016/11/15.
//  Copyright © 2016年 git4u. All rights reserved.
//

import Foundation
extension Double {
    func asString(digits: Int, force: Bool = false, separator sep: String = "") -> String {
        return NumberFormatter.decimalString(fromDoubleValue: self, withDigits: digits, separator: sep, forceDigit: force)!
    }
}

extension Float {
    func asString(digits: Int, force: Bool = false, separator sep: String = "") -> String {
        return NumberFormatter.decimalString(fromFloatValue: self, withDigits: digits, separator: sep, forceDigit: force)!
    }
}

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
    
    static func decimalString(fromFloatValue:Float, withDigits digits:Int, separator sep: String = "", forceDigit: Bool = false) -> String? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        if forceDigit {
            ns.minimumFractionDigits = digits
        }
        
        
        ns.roundingMode = .floor
        ns.numberStyle = .decimal
        ns.groupingSeparator = sep
        
        return ns.string(from: NSNumber.init(value: fromFloatValue))
    }
    
    static func decimalString(fromDoubleValue:Double, withDigits digits:Int, separator sep: String = "", forceDigit: Bool = false) -> String? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        if forceDigit {
            ns.minimumFractionDigits = digits
        }
        ns.roundingMode = .floor
        ns.numberStyle = .decimal
        ns.groupingSeparator = sep
        
        return ns.string(from: NSNumber.init(value: fromDoubleValue))
    }

    
    static func decimalString(from number:NSNumber, withDigits digits:Int) -> String? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        ns.numberStyle = .decimal
        ns.roundingMode = .floor
        
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
        ns.roundingMode = .floor
        return ns.number(from: string)
    }
    
    static func numberOfNoDigitsDecimalString(from string:String) -> NSNumber? {
        return self.numberOfDecimalString(from: string, withDigits: 0)
    }
}
