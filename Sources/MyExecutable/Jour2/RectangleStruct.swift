struct Point2 {
    var x: Double
    var y: Double
}
struct Rectangle {
    var width: Double
    var height: Double
    var origin: Point2

    var area: Double {
        return width * height
    }

    var perimeter: Double {
        return 2 * (width + height)
    }

    func contains(_ point: Point2) -> Bool {
        return point.x >= origin.x && point.x <= origin.x + width && point.y >= origin.y
            && point.y <= origin.y + height
    }

    mutating func move(by delta: Point2) {
        self.origin.x += delta.x
        self.origin.y += delta.y
    }
}
