//
//  TransactionDOM.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation

struct TransactionDOM {
    
    //MARK: - Properties
    let date: String?
    let amount: Double?
    let fee: Double?
    let description: String?
    
    //MARK: - Inits
    init(_ dto: TransactionDTO) {
        self.amount = dto.amount
        self.fee = dto.fee
        self.date = dto.date
        self.description = dto.description
    }
    
}
