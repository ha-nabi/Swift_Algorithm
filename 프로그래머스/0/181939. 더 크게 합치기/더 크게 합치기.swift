import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var num1 = Int(String("\(a)\(b)"))!
    var num2 = Int(String("\(b)\(a)"))!

    return num1 > num2 ? num1 : num2
}