//
//  PhotoServiceEndpoint.swift
//  TestGitflow3
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import Foundation

enum PhotoServiceEndpoint {
    case search(query: String)
    
    var baseURL: String {
        return "https://api.pexels.com/v1"
    }
    
    var path: String {
        switch self {
            case .search(query: let query):
                return "/search?query=\(query)&per_page=80"
        }
    }
}
