import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    var result = ""
    
    for index in index_list {
        let character = my_string[my_string.index(my_string.startIndex, offsetBy: index)]
        result.append(character)
    }
    
    return result
}