import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result: [Int] = []
    for number in arr {
        result.append(contentsOf: Array(repeating: number, count: number))
    }
    return result
}