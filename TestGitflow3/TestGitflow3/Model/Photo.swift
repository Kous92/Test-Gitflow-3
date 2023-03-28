//
//  Photo.swift
//  TestGitflow3
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import Foundation

struct PhotoResponse: Decodable {
    let page, perPage: Int
    let photos: [Photo]
    let totalResults: Int
    let nextPage: String

    enum CodingKeys: String, CodingKey {
        case page, photos
        case perPage = "per_page"
        case totalResults = "total_results"
        case nextPage = "next_page"
    }
}

// MARK: - Photo
struct Photo: Decodable {
    let id: Int
    let url: String
    let src: Src
    let alt: String
}

// MARK: - Src
struct Src: Decodable {
    let original: String
    let portrait: String
    let medium: String
}
