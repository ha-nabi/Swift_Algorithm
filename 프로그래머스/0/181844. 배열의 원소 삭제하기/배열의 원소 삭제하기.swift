import Foundation

func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    let deleteSet = Set(delete_list)
    let result = arr.filter { !deleteSet.contains($0) }
    
    return result
}