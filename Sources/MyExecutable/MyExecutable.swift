@main
struct MyExecutable {
    static func main() {
        var movies: [📽️] = [
            (title: "The Shawshank Redemption", year: 1994, rating: 9.3, genre: "Drama"),
            (title: "The Godfather", year: 1972, rating: 9.2, genre: "Crime"),
            (title: "The Dark Knight", year: 2008, rating: 9.0, genre: "Action"),
            (title: "Pulp Fiction", year: 1994, rating: 8.9, genre: "Crime"),
            (title: "Forrest Gump", year: 1994, rating: 8.8, genre: "Drama"),
            (title: "Inception", year: 2010, rating: 8.8, genre: "Science Fiction"),
            (title: "The Matrix", year: 1999, rating: 8.7, genre: "Science Fiction"),
            (title: "Interstellar", year: 2014, rating: 8.6, genre: "Science Fiction"),
            (title: "The Lion King", year: 1994, rating: 8.5, genre: "Animation"),
            (title: "Gladiator", year: 2000, rating: 8.5, genre: "Action"),
            (title: "Parasite", year: 2019, rating: 8.5, genre: "Thriller"),
            (title: "Avengers: Endgame", year: 2019, rating: 8.4, genre: "Action"),
        ]
        displayMenu(movies: &movies)
    }
}
