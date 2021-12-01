//
//  HTTPMethodTest.swift
//  
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import XCTest
@testable import Networking

class HTTPMethodTest: XCTestCase {
    
    func testIsSaveValue() {
        
        // get data
        let method = HTTPMethods.POST
        
        // ASSERT
        XCTAssertTrue(method.isSave)
        
    }
    
}
