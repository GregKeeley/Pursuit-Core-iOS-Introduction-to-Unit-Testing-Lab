//
//  IntroToUnitTestsTests.swift
//  IntroToUnitTestsTests
//
//  Created by Gregory Keeley on 12/2/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import XCTest

@testable import IntroToUnitTests

class IntroToUnitTestsTests: XCTestCase {

    override func setUp() {

    }

    override func tearDown() {

    }
    func testReadingDataFromTriviaFile() {
        let filename = "Trivia"
        let ext = "json"
        let data = Bundle.readRawJSONData(filename: filename, ext: ext)
        XCTAssertNotNil(data)
    }
    
}
