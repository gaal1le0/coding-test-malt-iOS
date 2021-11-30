//
//  MainViewDataProvider.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation
import Networking

//MARK: - DTO
struct TransactionDTO: Codable {
    let id: Int?
    let date: String?
    let amount: Double?
    let fee: Double?
    let description: String?
}

/// Data provider use for make the request to server
class MainViewDataProvider {
    
    //MARK: - Dependencies
    var client: APIClient?
    
    //MARK: - Inits
    init(_ client: APIClient) {
        self.client = client
    }
    
    //MARK: - Methods
    func getTransactions(callback: @escaping(Result<[TransactionDTO], Error>) -> ()) {
        
        
        
    }
    
}
