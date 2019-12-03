//
//  StarWarsUnitTests.swift
//  IntroToUnitTestsTests
//
//  Created by Gregory Keeley on 12/3/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import XCTest

@testable import IntroToUnitTests

class StarWarsUnitTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }
    
    func testReadingDataFromStarWarsFile() {
        let filename = "StarWars"
        let ext = "json"
        let data = Bundle.readRawJSONData(filename: filename, ext: ext)
        XCTAssertNotNil(data)
    }

}
