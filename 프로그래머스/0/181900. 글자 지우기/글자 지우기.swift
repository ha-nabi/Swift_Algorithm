import Foundation

func solution(_ my_string:String, _ indices:[Int]) -> String {
    var characters = Array(my_string)
    
    for index in indices.sorted(by: >) {
        characters.remove(at: index)
    }
    
    return String(characters)
}