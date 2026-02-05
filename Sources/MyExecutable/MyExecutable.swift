@main
struct MyExecutable {
    static func main() {
        let circle = Circle(radius: 5)
        let rectangleClass = RectangleClass(width: 10, height: 5)
        displayShapeArea([circle, rectangleClass])
    }
}
