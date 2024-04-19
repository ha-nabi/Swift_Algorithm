import Foundation

func solution(_ arr:[Int], _ n:Int) -> [Int] {
    var result = arr
    if arr.count % 2 == 1 {
        for i in stride(from: 0, to: arr.count, by: 2) {
            result[i] += n
        }
    } else {
        for i in stride(from: 1, to: arr.count, by: 2) {
            result[i] += n
        }
    }
    return result
}