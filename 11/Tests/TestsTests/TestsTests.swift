//
//  TestsTests.swift
//  TestsTests
//
//  Created by Gennady Evstratov on 11/29/17.
//  Copyright © 2017 Gennady Evstratov. All rights reserved.
//

import XCTest
@testable import Tests

class MultiplierTests: XCTestCase {
    
    var multiplier: MultiplierService?
    
    override func setUp() {
        super.setUp()
        
        self.multiplier = MultiplierServiceImpl()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        guard let multiplier = self.multiplier else {
            XCTAssert(false, "no service")
            return
        }
        
        let val = 2
        XCTAssert(multiplier.mul(val) == 4, "неправильный результат")
    }
}
