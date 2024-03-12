import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var result = ""
    
    for (first, second) in zip(str1, str2) {
        result.append(first)
        result.append(second)
    }
    
    return result
}