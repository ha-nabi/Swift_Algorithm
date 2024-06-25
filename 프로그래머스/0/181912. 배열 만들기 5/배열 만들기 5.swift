import Foundation

func solution(_ intStrs:[String], _ k:Int, _ s:Int, _ l:Int) -> [Int] {
    var result = [Int]()
    
    for str in intStrs {
        let startIndex = str.index(str.startIndex, offsetBy: s)
        let endIndex = str.index(startIndex, offsetBy: l)
        let substring = String(str[startIndex..<endIndex])
        
        if let number = Int(substring), number > k {
            result.append(number)
        }
    }
    
    return result
}