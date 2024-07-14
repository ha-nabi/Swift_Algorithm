import Foundation

func stepsToMakeOne(_ num: Int) -> Int {
    var count = 0
    var current = num
    
    while current != 1 {
        if current % 2 == 0 {
            current /= 2
        } else {
            current = (current - 1) / 2
        }
        count += 1
    }
    
    return count
}

func solution(_ num_list: [Int]) -> Int {
    return num_list.map { stepsToMakeOne($0) }.reduce(0, +)
}