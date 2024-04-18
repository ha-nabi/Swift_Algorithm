import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let result = num_list.sorted()
    
    return Array(result.dropFirst(5))
}