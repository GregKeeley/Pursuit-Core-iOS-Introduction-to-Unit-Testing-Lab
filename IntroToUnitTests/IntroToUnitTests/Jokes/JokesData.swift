//
//  JokesData.swift
//  IntroToUnitTests
//
//  Created by Gregory Keeley on 12/2/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import Foundation

struct JokesData: Decodable {
    let results: [Joke]
}

struct Joke: Decodable {
    var setup: String
    var punchline: String
}
