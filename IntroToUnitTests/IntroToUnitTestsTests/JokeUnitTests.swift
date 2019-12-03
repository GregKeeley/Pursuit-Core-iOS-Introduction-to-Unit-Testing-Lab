//
//  JokeUnitTests.swift
//  IntroToUnitTestsTests
//
//  Created by Gregory Keeley on 12/3/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import XCTest
@testable import IntroToUnitTests

class JokeUnitTests: XCTestCase {

    override func setUp() {

    }

    override func tearDown() {

    }
    
    func testReadingDataFromJokesFile() {
        let filename = "jokes"
        let ext = "json"
        let data = Bundle.readRawJSONData(filename: filename, ext: ext)
        XCTAssertNotNil(data)
    }

}
