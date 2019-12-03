//
//  Bundle+Extensions.swift
//  IntroToUnitTests
//
//  Created by Gregory Keeley on 12/2/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import Foundation

extension Bundle {
    static func readRawJSONData(filename: String, ext: String) -> Data {
        guard let fileURL = Bundle.main.url(forResource: filename, withExtension: ext) else {
            fatalError("Resource (\(filename)) not found")
        }
        var data: Data!
        do {
            data = try Data.init(contentsOf: fileURL)
        } catch {
            fatalError("contents not found error: \(error)")
        }
        return data
    }
}
