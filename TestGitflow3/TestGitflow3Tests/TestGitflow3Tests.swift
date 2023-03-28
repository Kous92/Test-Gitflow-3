//
//  TestGitflow3Tests.swift
//  TestGitflow3Tests
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import XCTest
@testable import TestGitflow3

final class TestGitflow3Tests: XCTestCase {

    func testData() {
        let data = PhotoResponse.dataMock()
        
        XCTAssertGreaterThan(data.photos.count, 0)
    }
}
