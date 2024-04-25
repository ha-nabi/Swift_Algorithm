import Foundation

func solution(_ myString: String) -> String {
    var result = ""

    for char in myString {
        if char == "a" {
            result += "A"
        } else if char.isUppercase && char != "A" {
            result += char.lowercased()
        } else {
            result += String(char)
        }
    }

    return result
}