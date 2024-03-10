import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let num1 = Int(String("\(a)\(b)"))!
    let num2 = 2 * a * b
    
    if num1 > num2 {
        return num1
    } else {
        return num2
    }
}