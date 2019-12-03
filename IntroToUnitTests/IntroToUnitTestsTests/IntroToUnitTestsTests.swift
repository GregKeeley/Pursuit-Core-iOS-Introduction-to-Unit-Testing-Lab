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
    func testReadingDataFromJokesFile() {
        let filename = "jokes"
        let ext = "json"
        let data = Bundle.readRawJSONData(filename: filename, ext: ext)
        XCTAssertNotNil(data)
    }
    func testReadingDataFromStarWarsFile() {
        let filename = "StarWars"
        let ext = "json"
        let data = Bundle.readRawJSONData(filename: filename, ext: ext)
        XCTAssertNotNil(data)
    }
    func testReadingDataFromTriviaFile() {
        let filename = "Trivia"
        let ext = "json"
        let data = Bundle.readRawJSONData(filename: filename, ext: ext)
    }
}
