import Foundation

func solution(_ strArr:[String]) -> Int {
    var lengthCount = [Int: Int]()
    
    for str in strArr {
        let length = str.count
        if let count = lengthCount[length] {
            lengthCount[length] = count + 1
        } else {
            lengthCount[length] = 1
        }
    }
    
    let maxCount = lengthCount.values.max() ?? 0
    return maxCount
}