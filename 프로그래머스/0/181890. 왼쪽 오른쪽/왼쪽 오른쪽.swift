import Foundation

func solution(_ str_list:[String]) -> [String] {
    let lIndex = str_list.firstIndex(of: "l")
    let rIndex = str_list.firstIndex(of: "r")
    
    if let lIndex = lIndex, let rIndex = rIndex {
        if lIndex < rIndex {
            return Array(str_list[..<lIndex])
        } else {
            return Array(str_list[(rIndex+1)...])
        }
    } else if let lIndex = lIndex {
        return Array(str_list[..<lIndex])
    } else if let rIndex = rIndex {
        return Array(str_list[(rIndex+1)...])
    } else {
        return []
    }
}