//
//  MainViewDataProvider.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation
import Networking

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
        let request = TransactionsRequest()
        client?.send(request, completion: callback)
    }
    
}
