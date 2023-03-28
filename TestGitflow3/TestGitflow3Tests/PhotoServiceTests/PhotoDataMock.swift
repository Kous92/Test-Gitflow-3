//
//  PhotoDataMock.swift
//  TestGitflow3Tests
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import Foundation
@testable import TestGitflow3

extension PhotoResponse {
    static func dataMock() -> PhotoResponse {
        let json =
        """
        {
            "page": 1,
            "per_page": 2,
            "photos": [
                {
                    "id": 13074301,
                    "width": 3904,
                    "height": 6960,
                    "url": "https://www.pexels.com/photo/blue-bugatti-car-in-close-up-photography-13074301/",
                    "photographer": "Raman",
                    "photographer_url": "https://www.pexels.com/@raman-107928056",
                    "photographer_id": 107928056,
                    "avg_color": "#3B424A",
                    "src": {
                        "original": "https://images.pexels.com/photos/13074301/pexels-photo-13074301.jpeg",
                        "large2x": "https://images.pexels.com/photos/13074301/pexels-photo-13074301.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/13074301/pexels-photo-13074301.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/13074301/pexels-photo-13074301.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/13074301/pexels-photo-13074301.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/13074301/pexels-photo-13074301.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/13074301/pexels-photo-13074301.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/13074301/pexels-photo-13074301.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Blue Bugatti Car in Close-up Photography"
                },
                {
                    "id": 12964186,
                    "width": 3744,
                    "height": 5616,
                    "url": "https://www.pexels.com/photo/silver-bugatti-chiron-parked-in-front-of-glass-wall-12964186/",
                    "photographer": "Dante Juhasz",
                    "photographer_url": "https://www.pexels.com/@dante-juhasz-62201650",
                    "photographer_id": 62201650,
                    "avg_color": "#979795",
                    "src": {
                        "original": "https://images.pexels.com/photos/12964186/pexels-photo-12964186.jpeg",
                        "large2x": "https://images.pexels.com/photos/12964186/pexels-photo-12964186.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                        "large": "https://images.pexels.com/photos/12964186/pexels-photo-12964186.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                        "medium": "https://images.pexels.com/photos/12964186/pexels-photo-12964186.jpeg?auto=compress&cs=tinysrgb&h=350",
                        "small": "https://images.pexels.com/photos/12964186/pexels-photo-12964186.jpeg?auto=compress&cs=tinysrgb&h=130",
                        "portrait": "https://images.pexels.com/photos/12964186/pexels-photo-12964186.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                        "landscape": "https://images.pexels.com/photos/12964186/pexels-photo-12964186.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                        "tiny": "https://images.pexels.com/photos/12964186/pexels-photo-12964186.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                    },
                    "liked": false,
                    "alt": "Silver Bugatti Chiron Parked in Front of Glass Wall"
                }
            ],
            "total_results": 2
        }
        """.data(using: .utf8)
        
        let decoder = JSONDecoder()
        let data = try! decoder.decode(PhotoResponse.self, from: json!)
        
        return data
    }
}
