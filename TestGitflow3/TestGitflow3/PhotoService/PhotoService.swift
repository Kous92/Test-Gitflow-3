//
//  PhotoService.swift
//  TestGitflow3
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import Foundation

protocol PhotoService {
    func searchPhotos(with query: String) async -> Result<PhotoResponse, PhotoServiceError>
}
