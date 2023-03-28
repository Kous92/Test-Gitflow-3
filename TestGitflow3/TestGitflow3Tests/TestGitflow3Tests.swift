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
    
    func testSearchPhotoSuccess() async {
        let photoService: PhotoService = MockPhotoService()
        let result = await photoService.searchPhotos(with: "Bugatti")
        
        switch result {
            case .success(let data):
                XCTAssertGreaterThan(data.photos.count, 0)
            case .failure(_):
                XCTFail()
        }
    }
    
    func testSearchPhotoFailure() async {
        let photoService: PhotoService = MockPhotoService()
        let result = await photoService.searchPhotos(with: "Porsche")
        
        switch result {
            case .success(_):
                XCTFail()
            case .failure(let errorMessage):
                XCTAssertEqual(errorMessage.rawValue, PhotoServiceError.apiError.rawValue)
        }
    }
}
