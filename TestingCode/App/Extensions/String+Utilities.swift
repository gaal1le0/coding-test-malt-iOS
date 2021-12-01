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
        return TransactionDOM.dateFormatter.date(from: self) != nil
    }
    
}
