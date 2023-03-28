# Test Gitflow 3

1. Créez un nouveau projet dans Xcode en utilisant le modèle de projet `App` avec Gitflow activé. ✅
```
git init
git flow init
```
2. Créez un nouveau modèle `Photo` pour stocker les données de photo, y compris le titre, la description et l'URL de l'image.
3. Créez un nouveau service `PhotosService` pour récupérer les données de photo à partir d'une API.
4. Utilisez URLSession pour effectuer une requête HTTP GET pour récupérer les données de photo à partir de l'API.
5. Analysez les données JSON renvoyées par l'API et créez des instances de modèle de photo à partir de ces données.
6. Stockez les instances de modèle de photo dans une propriété dans le service `PhotosService`.
7. Créez un ViewModel `PhotosViewModel` pour gérer la logique métier et l'affichage des données de photo.
8. Injectez l'instance du service `PhotosService` dans le ViewModel `PhotosViewModel`.
9. Créez une méthode dans le ViewModel `PhotosViewModel` pour récupérer les données de photo à partir du service `PhotosService`.
10. Utilisez cette méthode pour récupérer les données de photo à partir du service `PhotosService` et stockez-les dans une propriété dans le ViewModel `PhotosViewModel`.
11. Créez une vue `PhotosView` pour afficher la liste de photos récupérées.
12. Utilisez UITableView pour afficher les données de photo dans la vue `PhotosView`.
13. Injectez l'instance du ViewModel `PhotosViewModel` dans la vue `PhotosView`.
14. Utilisez les données de photo stockées dans la propriété dans le ViewModel `PhotosViewModel` pour populer les cellules de la table.
15. Ajoutez des tests unitaires pour le modèle `Photo`, le service `PhotosService` et le ViewModel `PhotosViewModel`.
16. Utilisez XCTest pour créer des tests pour chaque méthode dans chaque classe.
17. Créez une branche de fonctionnalité pour ajouter une fonctionnalité supplémentaire, telle que la possibilité de cliquer sur une photo pour l'afficher en plein écran.
18. Implémentez cette fonctionnalité en utilisant MVVM et les tests unitaires.
19. Fusionnez la branche de fonctionnalité dans la branche `develop`.
20. Créez une branche de version `release` pour publier l'application.
21. Effectuez des tests de validation sur la version de l'application avant la publication.
22. Fusionnez la branche `release` dans la branche `master` et publiez l'application.