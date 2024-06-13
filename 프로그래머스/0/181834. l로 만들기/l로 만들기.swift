import Foundation

func solution(_ myString:String) -> String {
    var result = ""
    
    for char in myString {
        if char < "l" {
            result += "l"
        } else {
            result += String(char)
        }
    }
    
    return result
}