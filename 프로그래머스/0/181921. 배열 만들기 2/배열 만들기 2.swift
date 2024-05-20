import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result: [Int] = []
    
    for i in l...r {
        let str = String(i)
        if str.allSatisfy({ $0 == "0" || $0 == "5" }) {
            result.append(i)
        }
    }
    
    return result.isEmpty ? [-1] : result
}