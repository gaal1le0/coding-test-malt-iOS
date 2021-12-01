//
//  Date+Utilities.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 1/12/21.
//

import Foundation

extension Date {
    
    func relative(to other: Date) -> String {
        
        let diffComponents = Calendar.current.dateComponents([.day], from: self, to: other)
        print("---- DEBUG: RELATIVE_DAY: \(diffComponents)")
        if diffComponents.day! > 1 {
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE, MMM d, yyyy"
            return formatter.string(from: self)
        }else if diffComponents.day! > 0 {
            return "Yesterday"
        }else{
            return "Today"
        }
        
    }
    
}
