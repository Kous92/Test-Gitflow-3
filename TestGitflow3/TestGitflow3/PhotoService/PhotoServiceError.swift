//
//  PhotoServiceError.swift
//  TestGitflow3
//
//  Created by Koussaïla Ben Mamar on 28/03/2023.
//

import Foundation

enum PhotoServiceError: String, Error {
    case invalidApiKey = "Erreur 401: La clé d'API fournie est invalide ou inexistante."
    case notFound = "Erreur 404: Aucun contenu disponible."
    case serverError = "Erreur 500: Erreur serveur."
    case apiError = "Une erreur est survenue."
    case invalidURL = "Erreur: URL invalide."
    case networkError = "Une erreur est survenue, pas de connexion Internet."
    case decodeError = "Une erreur est survenue au décodage des données téléchargées."
    case unknown = "Erreur inconnue."
}
