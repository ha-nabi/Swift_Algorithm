import Foundation

func solution(_ myString: String) -> [Int] {
    var lengths: [Int] = []
    var length = 0

    for char in myString {
        if char == "x" {
            lengths.append(length)
            length = 0
        } else {
            length += 1
        }
    }
    
    lengths.append(length)

    return lengths
}