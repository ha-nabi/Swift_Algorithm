import Foundation

func solution(_ my_string: String, _ alp: String) -> String {
    var result = ""

    for char in my_string {
        if String(char) == alp {
            result += String(char).uppercased()
        } else {
            result += String(char)
        }
    }

    return result
}