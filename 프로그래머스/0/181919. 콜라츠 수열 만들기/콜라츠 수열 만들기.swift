import Foundation

func solution(_ n:Int) -> [Int] {
    var result = [n]
    var current = n

    while current != 1 {
        if current % 2 == 0 {
            current /= 2
        } else {
            current = 3 * current + 1
        }
        result.append(current)
    }

    return result
}