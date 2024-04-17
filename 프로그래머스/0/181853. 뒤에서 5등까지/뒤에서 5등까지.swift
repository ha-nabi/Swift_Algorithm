import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let sortedList = num_list.sorted()
    
    return Array(sortedList.prefix(5))
}