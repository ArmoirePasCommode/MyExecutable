func exercice1() {
    let name = "Eliot"
    let age = 24
    let height = 1.845
    let middleName: String? = nil
    print("=== Profile ===")
    print("Name: \(name)")
    print("Age: \(age)")
    print("Height: \(height)")
    print("Birth year: \(2026 - age)")
    if let midName = middleName {
        print("Middle name: \(midName)")
    } else {
        print("No middle name")
    }
}
