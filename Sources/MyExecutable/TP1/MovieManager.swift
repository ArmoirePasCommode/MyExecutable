typealias 📽️ = (title: String, year: Int, rating: Double, genre: String)
func displayMovie(_ movie: 📽️) {
    print("Movie: \(movie.title) (\(movie.year)) - \(movie.genre)")
    print("Rating: \(movie.rating)/10")
}
func addMovie(title: String, year: Int, rating: Double, genre: String, to movies: inout [📽️]) {
    movies.append((title: title, year: year, rating: rating, genre: genre))
}
func findMovie(byTitle title: String, in movies: [📽️]) -> 📽️? {
    return movies.first { $0.title.lowercased() == title.lowercased() }
}
func filterMovies(_ movies: [📽️], matching criteria: ((📽️)) -> Bool) -> [📽️] {
    return movies.filter(criteria)
}
func getUniqueGenres(from movies: [📽️]) -> Set<String> {
    return Set(movies.map { $0.genre })
}
func averageRating(of movies: [📽️]) -> Double {
    let sum = movies.reduce(0) { $0 + $1.rating }
    return sum / Double(movies.count)
}
func bestMovie(in movies: [📽️]) -> (
    title: String, year: Int, rating: Double, genre: String
)? {
    return movies.max { $0.rating < $1.rating }
}
func moviesByDecade(_ movies: [📽️]) -> [String: [📽️]] {
    var result: [String: [📽️]] = [:]
    for movie in movies {
        let decade = String(movie.year / 10 * 10)
        result[decade, default: []].append(movie)
    }
    return result
}
