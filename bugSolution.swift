func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

func calculateAreaSafely(width: String?, height: String?) -> Int? {
    guard let widthInt = Int(width ?? ""), let heightInt = Int(height ?? "") else { return nil }
    return widthInt * heightInt
}

let area = calculateArea(width: 10, height: 5) // Correct usage
print(area) // Output: 50

let area2 = calculateAreaSafely(width: "10", height: "5") // Safe usage with String
print(area2 ?? 0) // Output: 50

let area3 = calculateAreaSafely(width: "abc", height: "5") // Handles error gracefully
print(area3 ?? 0) // Output: 0