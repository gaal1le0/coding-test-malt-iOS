//
//  TransactionDOM.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation

/// Transactions types
enum TransactionsTypes {
    case income
    case expense
}

struct TransactionDOM {
    
    //MARK: - Properties
    let date: Date?
    let amount: Double
    let description: String?
    let type: TransactionsTypes
    
    //MARK: - Aux
    static var dateFormatter: ISO8601DateFormatter = {
        return ISO8601DateFormatter()
    }()
    
    //MARK: - Inits
    init(_ dto: TransactionDTO) {
        self.amount = dto.amount + (dto.fee ?? 0)
        self.type = self.amount > 0 ? .income : .expense
        self.date = TransactionDOM.dateFormatter.date(from: dto.date)
        self.description = dto.description
    }
    
}

//MARK: - Extending DOM to implement more functionalities
extension TransactionDOM {
    /// Implemented conversion to string for formatter
    var dateAsString: String {
        return self.date?.relative(to: Date.now) ?? "--"
    }
    
    /// Get ammount formatted
    var ammountFormatted: String {
        return "\(self.amount) €"
    }
}
