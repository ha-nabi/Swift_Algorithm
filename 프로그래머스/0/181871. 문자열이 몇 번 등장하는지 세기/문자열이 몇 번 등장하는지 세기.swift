import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var count = 0
    let myStringLength = myString.count
    let patLength = pat.count

    for i in 0...(myStringLength - patLength) {
        let startIndex = myString.index(myString.startIndex, offsetBy: i)
        let endIndex = myString.index(startIndex, offsetBy: patLength)
        let substring = myString[startIndex..<endIndex]
        
        if substring == pat {
            count += 1
        }
    }

    return count
}