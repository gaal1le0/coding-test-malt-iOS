//
//  HTTPMethods.swift
//  
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation

/// This enum contains all needed information for perform an HTTPRequest
public enum HTTPMethods: String {
    
    case POST = "POST"
    case GET = "GET"
    case PUT = "PUT"
    case PATCH = "PATCH"
    case DELETE = "DELETE"
    
    var isSave: Bool {
        switch self {
            case .GET:
            return false
            case .POST, .PUT, .PATCH, .DELETE:
            return true
        }
    }
    
}
