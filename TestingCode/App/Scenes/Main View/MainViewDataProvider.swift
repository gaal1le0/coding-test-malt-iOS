//
//  MainViewDataProvider.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation
import Networking

class MainViewDataProvider {
    
    //MARK: - Dependencies
    var client: APIClient?
    
    //MARK: - Inits
    init(_ client: APIClient) {
        self.client = client
    }
    
}
