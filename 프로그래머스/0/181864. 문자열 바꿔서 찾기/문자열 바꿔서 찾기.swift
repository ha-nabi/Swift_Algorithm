import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var transformedString = ""

    for char in myString {
        if char == "A" {
            transformedString.append("B")
        } else if char == "B" {
            transformedString.append("A")
        }
    }

    if transformedString.contains(pat) {
        return 1
    } else {
        return 0
    }
}