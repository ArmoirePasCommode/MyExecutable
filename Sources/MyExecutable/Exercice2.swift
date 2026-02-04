func exercice2() {
    let nameMarks: [String: Double] = [
        "Eliot": 5, "John": 2, "Jane": 18, "Bob": 12, "Alice": 18, "Ana": 19, "Lulu": 10,
        "Momo": 16,
    ]
    var average: Double
    var sum: Double = 0
    var bestMark: Double = 0
    var bestStudent: String = ""
    var bestStudents: [String] = []
    for (name, mark) in nameMarks {
        if mark > bestMark {
            bestMark = mark
            bestStudent = name
        }
        if mark >= 12 {
            bestStudents.append(name)
        }
        sum += mark
    }
    average = sum / Double(nameMarks.count)
    print("Average: \(average)")
    print("Best student: \(bestStudent)")
    print("Best students: \(bestStudents)")
}
