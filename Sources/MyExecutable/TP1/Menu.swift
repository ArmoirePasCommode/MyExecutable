import Foundation

func displayMenu(movies: inout [📽️]) {
    var shouldKeepRunning = true

    while shouldKeepRunning {
        print("\n=== 🎬 Movie Manager ===")
        print("1. Afficher tous les films")
        print("2. Rechercher un film")
        print("3. Filtrer par genre")
        print("4. Afficher les statistiques")
        print("5. Ajouter un film")
        print("6. Quitter")
        print("\nEntrez votre choix : ", terminator: "")

        guard let choice = readLine() else { continue }

        switch choice {
        case "1":
            print("\n--- Liste des films ---")
            for movie in movies {
                displayMovie(movie)
            }
        case "2":
            print("\n--- Recherche ---")
            print("Entrez le titre du film : ", terminator: "")
            if let title = readLine(), !title.isEmpty {
                if let movie = findMovie(byTitle: title, in: movies) {
                    displayMovie(movie)
                } else {
                    print("Film non trouvé.")
                }
            } else {
                print("Titre invalide.")
            }
        case "3":
            print("\n--- Filtre par genre ---")
            let genres = getUniqueGenres(from: movies)
            print("Genres disponibles : \(genres.joined(separator: ", "))")
            print("Entrez le genre : ", terminator: "")
            if let genre = readLine(), !genre.isEmpty {
                let filteredMovies = filterMovies(
                    movies, matching: { $0.genre.lowercased() == genre.lowercased() })
                if filteredMovies.isEmpty {
                    print("Aucun film trouvé pour ce genre.")
                } else {
                    for movie in filteredMovies {
                        displayMovie(movie)
                    }
                }
            } else {
                print("Genre invalide.")
            }
        case "4":
            print("\n--- Statistiques ---")
            displayStatistics(movies)
        case "5":
            print("\n--- Ajouter un film ---")
            promptAddMovie(to: &movies)
        case "6":
            print("Au revoir ! 👋")
            shouldKeepRunning = false
        default:
            print("Choix invalide, veuillez réessayer.")
        }
    }
}
func displayStatistics(_ movies: [📽️]) {
    print("Nombre total de films : \(movies.count)")
    let avg = averageRating(of: movies)
    print(String(format: "Note moyenne : %.2f/10", avg))

    if let best = bestMovie(in: movies) {
        print("Meilleur film : \(best.title) (\(best.rating)/10)")
    }

    let byDecade = moviesByDecade(movies)
    print("Films par décennie :")
    for (decade, decadeMovies) in byDecade.sorted(by: { $0.key < $1.key }) {
        print("  - \(decade)s : \(decadeMovies.count) films")
    }
}
func promptAddMovie(to movies: inout [📽️]) {
    print("Titre : ", terminator: "")
    guard let title = readLine(), !title.isEmpty else {
        print("Erreur : Le titre ne peut pas être vide.")
        return
    }

    print("Année : ", terminator: "")
    guard let yearString = readLine(), let year = Int(yearString) else {
        print("Erreur : Année invalide.")
        return
    }

    print("Note (sur 10) : ", terminator: "")
    guard let ratingString = readLine(), let rating = Double(ratingString),
        rating >= 0 && rating <= 10
    else {
        print("Erreur : Note invalide.")
        return
    }

    print("Genre : ", terminator: "")
    guard let genre = readLine(), !genre.isEmpty else {
        print("Erreur : Le genre ne peut pas être vide.")
        return
    }

    addMovie(title: title, year: year, rating: rating, genre: genre, to: &movies)
    print("✅ Film ajouté avec succès !")
}
