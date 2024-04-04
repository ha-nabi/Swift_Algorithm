import Foundation

func solution(_ arr: [Int]) -> [Int] {
    return arr.map { number in
        if number >= 50 && number % 2 == 0 {
            return number / 2
        } else if number < 50 && number % 2 != 0 {
            return number * 2
        } else {
            return number
        }
    }
}