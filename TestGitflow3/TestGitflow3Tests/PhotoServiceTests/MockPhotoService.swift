//
//  MockPhotoService.swift
//  TestGitflow3Tests
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import Foundation
@testable import TestGitflow3

final class MockPhotoService: PhotoService {
    func searchPhotos(with query: String) async -> Result<PhotoResponse, PhotoServiceError> {
        if query == "Bugatti" {
            return .success(.dataMock())
        } else {
            return .failure(.apiError)
        }
    }
}
