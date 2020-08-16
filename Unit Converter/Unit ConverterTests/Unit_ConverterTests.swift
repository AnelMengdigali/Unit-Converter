//
//  Unit_ConverterTests.swift
//  Unit ConverterTests
//
//  Created by ggg on 26.07.2020.
//  Copyright © 2020 anelapplab. All rights reserved.
//

import XCTest
@testable import Unit_Converter

class Unit_ConverterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testGetHours(){
        
        XCTAssert(Converter.getKM(forConvert: 47) == 75.6392)
        XCTAssert(Converter.getML(forConvert: 75.6392) == 47)
        XCTAssert(Converter.getKG(forConvert: 22) == 9.9790)
        
        
    }

}
