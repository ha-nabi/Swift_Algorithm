import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    var result = ""
    let characters = Array(my_string)
    
    for i in stride(from: c - 1, to: characters.count, by: m) {
        result.append(characters[i])
    }
    
    return result
}