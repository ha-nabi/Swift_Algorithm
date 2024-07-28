import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    let length = arr.count
    
    func isPowerOfTwo(_ n: Int) -> Bool {
        return (n & (n - 1)) == 0
    }
    
    if isPowerOfTwo(length) {
        return result
    }
    
    var power = 1
    while power < length {
        power <<= 1
    }
    
    result.append(contentsOf: repeatElement(0, count: power - length))
    
    return result
}