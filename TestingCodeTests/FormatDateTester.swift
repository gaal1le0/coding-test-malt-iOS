//
//  TestingCodeTests.swift
//  TestingCodeTests
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import XCTest
@testable import TestingCode

class FormatDateTester: XCTestCase {
    
    //MARK: - Properties
    var formatter: DateFormatter!
    var today: Date!
    
    override func setUp() {
        formatter = DateFormatter()
        formatter.dateFormat = "MMM/dd"
        today = try? Date("2021-11-25T12:00:00Z", strategy: .iso8601)
    }
    
    override func tearDownWithError() throws {
        formatter = nil
        today = nil
    }

    func testValidTodayDate() throws {
        let relative = today.relative(to: today)
        XCTAssertEqual(relative, "Today")
    }
    
    func testValidYesterdayDate() throws {
        let yesterday = try? Date("2021-11-24T12:00:00Z", strategy: .iso8601)
        let relative = yesterday!.relative(to: today)
        XCTAssertEqual(relative, "Yesterday")
    }
    
    func testValidPreviusDay() throws {
        let daybefore = try? Date("2021-11-23T12:00:00Z", strategy: .iso8601)
        let relative = daybefore!.relative(to: today)
        let expected = formatter.string(from: daybefore!)
        let pieces = expected.split(separator: "/")
        XCTAssertEqual(relative, "Tuesday, Nov 23, 2021")
    }
    
    func testValidOneSecondCase() throws {
        let yesterday = try? Date("2021-11-24T00:00:01Z", strategy: .iso8601)
        let relative = yesterday!.relative(to: today)
        XCTAssertEqual(relative, "Yesterday")
    }
    
    func testValidOneSecondDay() throws {
        let today = try? Date("2021-11-25T23:59:59Z", strategy: .iso8601)
        let relative = today!.relative(to: today!)
        XCTAssertEqual(relative, "Today")
    }

}

