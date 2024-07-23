import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var X: [Int] = []
    
    for (index, value) in arr.enumerated() {
        if flag[index] {
            X.append(contentsOf: Array(repeating: value, count: value * 2))
        } else {
            X.removeLast(value)
        }
    }
    
    return X
}