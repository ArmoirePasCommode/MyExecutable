class Shape {
    public let name: String
    init(name: String) {
        self.name = name
    }
    public func area() -> Double {
        return 0
    }
}
class Circle: Shape {
    public let radius: Double
    init(radius: Double) {
        self.radius = radius
        super.init(name: "Circle")
    }
    override public func area() -> Double {
        return Double.pi * radius * radius
    }
}
class RectangleClass: Shape {
    public let width: Double
    public let height: Double
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
        super.init(name: "Rectangle")
    }
    override public func area() -> Double {
        return width * height
    }
}
func displayShapeArea(_ shape: [Shape]) {
    for shape in shape {
        print("Shape: \(shape.name), Area: \(shape.area())")
    }
}
