import Foundation

func solution(_ arr:[[Int]]) -> [[Int]] {
    let rowCount = arr.count
    let colCount = arr[0].count
    
    if rowCount > colCount {
        return arr.map { row in
            row + Array(repeating: 0, count: rowCount - colCount)
        }
    } 
    else if rowCount < colCount {
        let zeroRow = Array(repeating: 0, count: colCount)
        var newArr = arr
        for _ in 0..<(colCount - rowCount) {
            newArr.append(zeroRow)
        }
        return newArr
    }
    
    return arr
}