import Foundation

func solution(_ num_list:[Int]) -> Int {
    for (index, number) in num_list.enumerated() {
    if number < 0 {
        return index
        }
    }
    return -1
}