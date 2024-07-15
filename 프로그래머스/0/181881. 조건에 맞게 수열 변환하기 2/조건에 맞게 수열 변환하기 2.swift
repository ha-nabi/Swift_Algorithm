import Foundation

func transform(_ arr: [Int]) -> [Int] {
    return arr.map { value in
        if value >= 50 && value % 2 == 0 {
            return value / 2
        } else if value < 50 && value % 2 != 0 {
            return value * 2 + 1
        } else {
            return value
        }
    }
}

func solution(_ arr: [Int]) -> Int {
    var currentArr = arr
    var count = 0
    
    while true {
        let newArr = transform(currentArr)
        if newArr == currentArr {
            break
        }
        currentArr = newArr
        count += 1
    }
    
    return count
}