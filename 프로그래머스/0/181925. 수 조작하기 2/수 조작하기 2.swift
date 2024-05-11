import Foundation

func solution(_ numLog:[Int]) -> String {
        var result = ""
    
    for i in 1..<numLog.count {
        let diff = numLog[i] - numLog[i - 1]
        switch diff {
        case 1:
            result.append("w")
        case -1:
            result.append("s")
        case 10:
            result.append("d")
        case -10:
            result.append("a")
        default:
            break
        }
    }
    
    return result
}