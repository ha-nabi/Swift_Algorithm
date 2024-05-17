import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for query in queries {
        let start = query[0]
        let end = query[1]
        let k = query[2]
        
        var minValue = Int.max
        for i in start...end {
            if arr[i] > k && arr[i] < minValue {
                minValue = arr[i]
            }
        }
        
        if minValue == Int.max {
            result.append(-1)
        } else {
            result.append(minValue)
        }
    }
    
    return result
}