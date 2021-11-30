//
//  APIErrors.swift
//  
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation

/// This enum contains all the posibles errors that APIClient can send
public enum APIErrors: String, Error {
    case invalidURLRequest = "Server request cannot be generated"
    case invalidDecodeResponse = "Server response cannot be decoded"
    case undefinedNetworkError = "Undefined network error"
    case invalidHTTPRequest = "Invalid HTTP Request"
}
