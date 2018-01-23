//
//  DateFormatter+QuickGen.swift
//  UniversalModule
//
//  Created by keith.lee on 2016/11/15.
//  Copyright © 2016年 git4u. All rights reserved.
//

import Foundation
extension Decimal {
    var decimalValue: Decimal {
        return self
    }
    
    var doubleValue: Double {
        let dec = NSDecimalNumber.init(decimal: self)
        return dec.doubleValue.rounded(toPlaces: 8, rule: FloatingPointRoundingRule.toNearestOrEven)
    }
    
    func asString(digits: Int, force: Bool = false, separator sep: String = "", roundMode:  NumberFormatter.RoundingMode = .floor) -> String {
        return NumberFormatter.decimalString(fromDecimal: self, withDigits: digits, separator: sep, forceDigit: force, roundMode: roundMode)!
    }
}

extension Double {
    var decimalValue: Decimal {
        return Decimal.init(self.rounded(toPlaces: 8))
    }
    
    func asString(digits: Int, force: Bool = false, separator sep: String = "", roundMode:  NumberFormatter.RoundingMode = .floor) -> String {
        return NumberFormatter.decimalString(fromDoubleValue: self, withDigits: digits, separator: sep, forceDigit: force, roundMode: roundMode)!
    }
}

extension Float {
    func asString(digits: Int, force: Bool = false, separator sep: String = "", roundMode:  NumberFormatter.RoundingMode = .floor) -> String {
        return NumberFormatter.decimalString(fromFloatValue: self, withDigits: digits, separator: sep, forceDigit: force, roundMode: roundMode)!
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
    static func decimalString(fromDecimal: Decimal, withDigits digits:Int, separator sep: String = "", forceDigit: Bool = false, roundMode: NumberFormatter.RoundingMode) -> String? {
        
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        if forceDigit {
            ns.minimumFractionDigits = digits
        }
        
        
        ns.roundingMode = roundMode
        ns.numberStyle = .decimal
        ns.groupingSeparator = sep
        var rule: FloatingPointRoundingRule
        switch roundMode {
        case .ceiling:
            rule = .awayFromZero
        case .down:
            rule = .down
        case .up:
            rule = .up
        case .floor:
            rule = .towardZero
        case .halfDown, .halfUp, .halfEven:
            rule = .toNearestOrEven
        }
        
        let dec = NSDecimalNumber.init(decimal: fromDecimal).doubleValue.rounded(toPlaces: digits, rule: rule).decimalValue
        let dValue = dec.doubleValue
        let str = ns.string(from: NSNumber.init(value: dValue))
        return str
    }
    
    
    static func decimalString(fromFloatValue:Float, withDigits digits:Int, separator sep: String = "", forceDigit: Bool = false, roundMode: NumberFormatter.RoundingMode) -> String? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        if forceDigit {
            ns.minimumFractionDigits = digits
        }
        
        
        ns.roundingMode = roundMode
        ns.numberStyle = .decimal
        ns.groupingSeparator = sep
        
        return ns.string(from: NSNumber.init(value: fromFloatValue))
    }
    
    static func decimalString(fromDoubleValue:Double, withDigits digits:Int, separator sep: String = "", forceDigit: Bool = false, roundMode: NumberFormatter.RoundingMode) -> String? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        if forceDigit {
            ns.minimumFractionDigits = digits
        }
        ns.roundingMode = roundMode
        ns.numberStyle = .decimal
        ns.groupingSeparator = sep
        
        return ns.string(from: NSNumber.init(value: fromDoubleValue))
    }

    
    static func decimalString(from number:NSNumber, withDigits digits:Int, roundMode: NumberFormatter.RoundingMode) -> String? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        ns.numberStyle = .decimal
        ns.roundingMode = roundMode
        
        return ns.string(from: number)
    }
    
    static func decimalNoDigitString(from number:NSNumber, roundMode: NumberFormatter.RoundingMode) -> String? {
        return self.decimalString(from: number, withDigits: 0, roundMode: roundMode)
    }
    
    static func numberOfDecimalString(from string:String, withDigits digits:Int, roundMode: NumberFormatter.RoundingMode) -> NSNumber? {
        let ns = NumberFormatter.init()
        ns.allowsFloats = true
        ns.maximumFractionDigits = digits
        ns.numberStyle = .decimal
        ns.roundingMode = roundMode
        return ns.number(from: string)
    }
    
    static func numberOfNoDigitsDecimalString(from string:String, roundMode:  NumberFormatter.RoundingMode = .floor) -> NSNumber? {
        return self.numberOfDecimalString(from: string, withDigits: 0, roundMode: roundMode)
    }
}
