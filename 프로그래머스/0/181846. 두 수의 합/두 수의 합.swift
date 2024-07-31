import Foundation

func solution(_ a:String, _ b:String) -> String {
    let aArray = Array(a.reversed())
    let bArray = Array(b.reversed())
    var result = ""
    var carry = 0
    let maxLength = max(aArray.count, bArray.count)
    
    for i in 0..<maxLength {
        let aDigit = i < aArray.count ? Int(String(aArray[i]))! : 0
        let bDigit = i < bArray.count ? Int(String(bArray[i]))! : 0
        let sum = aDigit + bDigit + carry
        result.append(String(sum % 10))
        carry = sum / 10
    }
    
    if carry > 0 {
        result.append(String(carry))
    }
    
    return String(result.reversed())
}