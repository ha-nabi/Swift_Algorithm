import Foundation

func solution(_ num_str:String) -> Int {
    var result = 0
    
    for i in num_str {
        if let number = Int(String(i)) {
            result += number
        }
    }
    return result
}