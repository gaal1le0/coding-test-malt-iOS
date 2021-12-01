//
//  TransactionsRequest.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 1/12/21.
//

import Foundation
import Networking

/// Request to get Transactions Data
struct TransactionsRequest: JSONAPIRequest {
    
    typealias APIResponse = [TransactionDTO]
    var resourcePath = Constants.kAPI.kEndpoints.kTransactions
    var decoder: JSONDecoder = JSONDecoder()
    
    func generateHeaders() -> [String : String] {
        return [
            "Accept": "application/json"
        ]
    }
    
}
