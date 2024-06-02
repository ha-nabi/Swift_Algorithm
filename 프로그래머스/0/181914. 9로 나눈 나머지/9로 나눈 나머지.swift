import Foundation

func solution(_ number:String) -> Int {
    var sum = 0
    
    for char in number {
        if let digit = char.wholeNumberValue {
            sum += digit
        }
    }
    
    return sum % 9
}