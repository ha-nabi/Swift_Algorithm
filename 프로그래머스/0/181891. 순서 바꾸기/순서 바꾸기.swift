import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    let afterN = num_list[n...]
    let upToN = num_list[..<n]
    return Array(afterN) + Array(upToN)
}