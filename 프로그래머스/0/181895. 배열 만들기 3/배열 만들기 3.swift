import Foundation

func solution(_ arr:[Int], _ intervals:[[Int]]) -> [Int] {
    let firstInterval = intervals[0]
    let secondInterval = intervals[1]
    
    let firstSegment = Array(arr[firstInterval[0]...firstInterval[1]])
    let secondSegment = Array(arr[secondInterval[0]...secondInterval[1]])
    
    return firstSegment + secondSegment
}