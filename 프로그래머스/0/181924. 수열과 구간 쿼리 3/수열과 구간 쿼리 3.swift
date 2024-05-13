import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    
    for query in queries {
        let index1 = query[0]
        let index2 = query[1]
        
        let temp = result[index1]
        result[index1] = result[index2]
        result[index2] = temp
    }
    
    return result
}