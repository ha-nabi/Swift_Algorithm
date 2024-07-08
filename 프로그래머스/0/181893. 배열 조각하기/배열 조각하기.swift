import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var result = arr

    for (i, q) in query.enumerated() {
        if i % 2 == 0 {
            result = Array(result[0...q])
        } else {
            result = Array(result[q...])
        }
    }

    return result
}