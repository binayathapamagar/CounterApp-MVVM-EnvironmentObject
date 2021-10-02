//
//  MVVM_Environment_ObjectTests.swift
//  MVVM-Environment-ObjectTests
//
//  Created by Binaya on 02/10/2021.
//

import XCTest
@testable import MVVM_Environment_Object

class MVVM_Environment_ObjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
       
        let scoreVM = ScoreViewModel()
        XCTAssertTrue(scoreVM.scoreValue == 0, "Should be 0 at the start.")
        
        scoreVM.increaseScore()
        XCTAssertTrue(scoreVM.scoreValue == 1, "Should be 1 after caling increaseScore().")
        
        scoreVM.decreaseScore()
        XCTAssertTrue(scoreVM.scoreValue == 0, "Should be 0 after caling decreaseScore().")

        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
