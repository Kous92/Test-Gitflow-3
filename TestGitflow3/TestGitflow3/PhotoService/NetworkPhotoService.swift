//
//  NetworkPhotoService.swift
//  TestGitflow3
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import Foundation

final class NetworkPhotoService: PhotoService {
    
    func searchPhotos(with query: String) async -> Result<PhotoResponse, PhotoServiceError> {
        return await getRequest(endpoint: .search(query: query))
    }
    
    private func getRequest<T: Decodable>(endpoint: PhotoServiceEndpoint) async -> Result<T, PhotoServiceError> {
        guard let encodedUrlString = encodeURL(with: endpoint.baseURL + endpoint.path),
              let url = URL(string: encodedUrlString) else {
            print("URL invalide.")
            return .failure(.invalidURL)
        }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: getURLRequest(with: url))
            print(url.absoluteString)
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Pas de réponse du serveur.")
                return .failure(.networkError)
            }
            
            guard httpResponse.statusCode == 200 else {
                print("Erreur code \(httpResponse.statusCode).")
                return .failure(getErrorMessage(with: httpResponse.statusCode))
            }
            
            print("Code: \(httpResponse.statusCode)")
            let decoder = JSONDecoder()
            
            do {
                var outputData: T
                outputData = try decoder.decode(T.self, from: data)
                return .success(outputData)
            } catch {
                return .failure(.decodeError)
            }
        } catch {
            print("ERREUR: \(error.localizedDescription)")
        }
        
        return .failure(.unknown)
    }
    
    private func getErrorMessage(with code: Int) -> PhotoServiceError {
        let errorMessage: PhotoServiceError
        
        switch code {
            case 401:
                errorMessage = .invalidApiKey
            case 404:
                errorMessage = .notFound
            case 500, 501, 502, 503:
                errorMessage = .serverError
            default:
                errorMessage = .apiError
        }
        
        return errorMessage
    }
    
    private func encodeURL(with string: String) -> String? {
        return string.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }
    
    private func getURLRequest(with url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("bN2ZI3WiWiCFarPVvsoiiZypyMDuc1XU66OJQAgcTUav7Qsek9uBrprm", forHTTPHeaderField: "Authorization")
        
        return request
    }
}
