import Foundation

func solution(_ myString:String) -> [String] {
    let parts = myString.split(separator: "x")
    
    let nonEmptyParts = parts.filter { !$0.isEmpty }
    
    let sortedParts = nonEmptyParts.sorted()
    
    return sortedParts.map { String($0) }
}