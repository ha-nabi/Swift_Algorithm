import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    if myString.range(of: pat, options: .caseInsensitive) != nil {
        return 1
    } else {
        return 0
    }
}