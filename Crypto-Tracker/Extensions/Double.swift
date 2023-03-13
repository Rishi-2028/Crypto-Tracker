//
//  Double.swift
//  Crypto-Tracker
//
//  Created by Rishi on 12/03/2023.
//

import Foundation

extension Double {
    
    /// Convert a Double into a currency with 2-6 decimal places
    ///```
    ///Convert 1234.56 to $1,234.56
    ///Convert 12.3456 to $12.3456
    ///Convert 0.123456 to $0.123456
    ///
    ///```
    private var currenctFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
//        formatter.locale = .current // <- default value
//        formatter.currencyCode = "usd" // <- change currency
//        formatter.currencySymbol = "$" // <- change currency symbol
        return formatter
    }
    /// Convert a Double into a currency  as String with 2-6 decimal places
    ///```
    ///Convert 1234.56 to "$1,234.56"
    ///Convert 12.3456 to "$12.3456"
    ///Convert 0.123456 to "$0.123456"
    ///
    ///```
    func asCurrencyWithDecimals() -> String {
        let number = NSNumber(value: self)
        return currenctFormatter6.string(from: number) ?? "$0.00"
    }
    ///Converts a Double into string representation
    ///```
    /// Convert 1.2345 to "1.23"
    ///```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    /// Convert a Double into string representation with percent symbol
    ///```
    /// Convert 1.2345 to "1.23"
    ///```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
