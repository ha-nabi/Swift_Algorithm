import Foundation

func solution(_ n_str:String) -> String {
    var index = n_str.startIndex
    
    while index < n_str.endIndex && n_str[index] == "0" {
        index = n_str.index(after: index)
    }

    return String(n_str[index...])
}