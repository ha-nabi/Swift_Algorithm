import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var result = ""
    
    for i in 0..<my_strings.count {
        let s = parts[i][0]
        let e = parts[i][1]
        let partString = my_strings[i][my_strings[i].index(my_strings[i].startIndex, offsetBy: s)...my_strings[i].index(my_strings[i].startIndex, offsetBy: e)]
        result += partString
    }
    
    return result
}