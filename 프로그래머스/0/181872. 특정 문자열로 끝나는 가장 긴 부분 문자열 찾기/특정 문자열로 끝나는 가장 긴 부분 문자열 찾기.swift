import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    let patLength = pat.count
    
    for i in stride(from: myString.count - 1, through: patLength - 1, by: -1) {
        let endIndex = myString.index(myString.startIndex, offsetBy: i + 1)
        let startIndex = myString.index(endIndex, offsetBy: -patLength)
        let substring = myString[startIndex..<endIndex]
        
        if substring == pat {
            return String(myString[..<endIndex])
        }
    }
    
    return ""
}