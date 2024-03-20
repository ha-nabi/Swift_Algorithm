import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    let result = my_string.suffix(n)
    
    return String(result)
}