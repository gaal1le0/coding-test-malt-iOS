//
//  String+Utilities.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 1/12/21.
//

import Foundation

//MARK: - Extending string to give extra funcionalities

extension String: Error { }

extension String {
    
    /// This property give us the date valids
    var isDateValid: Bool {
        let date = TransactionDOM.dateFormatter.date(from: self)
        print("---- DEBUG: DATE_VALIDATION: \(self), ctrl: \(date != nil)")
        return date != nil
    }
    
}
