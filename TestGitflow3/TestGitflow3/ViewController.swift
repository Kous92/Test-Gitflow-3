//
//  ViewController.swift
//  TestGitflow3
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var service: PhotoService?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.service = NetworkPhotoService()
        // Do any additional setup after loading the view.
        testRequest()
    }
    
    func testRequest() {
        Task {
            let result = await service?.searchPhotos(with: "Ferrari")
            
            guard let result else {
                print("ERREUR")
                return
            }
            
            switch result {
                case .success(let data):
                    print(data)
                case .failure(let error):
                    print(error.rawValue)
            }
        }
    }
}

