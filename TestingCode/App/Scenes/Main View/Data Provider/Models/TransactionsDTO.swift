//
//  TransactionsDTO.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 1/12/21.
//

import Foundation

//MARK: - DTO
struct TransactionDTO: Codable {
    
    //MARK: - Proeprties
    let id: Int?
    let date: String
    let amount: Double?
    let fee: Double?
    let description: String?
    
    //MARK: - Decoder method
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        date = try container.decode(String.self, forKey: .date)
        amount = try container.decodeIfPresent(Double.self, forKey: .amount)
        fee = try container.decodeIfPresent(Double.self, forKey: .fee)
        description = try container.decodeIfPresent(String.self, forKey: .description)
    }
    
}
