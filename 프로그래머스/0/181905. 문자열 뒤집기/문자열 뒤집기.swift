import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var characters = Array(my_string)
    
    let subArray = characters[s...e].reversed()
    
    characters.replaceSubrange(s...e, with: subArray)
    
    return String(characters)
}