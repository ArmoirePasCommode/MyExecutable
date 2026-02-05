@main
struct MyExecutable {
    static func main() {
        var rectangle = Rectangle(width: 10, height: 5, origin: Point2(x: 0, y: 0))
        let pointToCheck = Point2(x: 5, y: 2.5)

        if rectangle.contains(pointToCheck) {
            print("Le point \(pointToCheck) est dans le rectangle.")
        } else {
            print("Le point \(pointToCheck) n'est pas dans le rectangle.")
        }

        let delta = Point2(x: 5, y: 5)
        rectangle.move(by: delta)
        print("Nouvelle origine du rectangle : \(rectangle.origin)")
    }
}
