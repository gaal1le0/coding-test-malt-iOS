//
//  TransactionsDTO.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 1/12/21.
//

import Foundation

//MARK: - DTO
struct TransactionDTO: Codable {
    let id: Int?
    let date: String?
    let amount: Double?
    let fee: Double?
    let description: String?
}
