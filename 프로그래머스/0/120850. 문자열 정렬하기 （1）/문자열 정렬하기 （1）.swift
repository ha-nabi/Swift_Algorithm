import Foundation

func solution(_ my_string: String) -> [Int] {
    var numbers: [Int] = []

    for char in my_string {
        if char.isNumber {
            if let num = Int(String(char)) {
                numbers.append(num)
            }
        }
    }

    numbers.sort()

    return numbers
}