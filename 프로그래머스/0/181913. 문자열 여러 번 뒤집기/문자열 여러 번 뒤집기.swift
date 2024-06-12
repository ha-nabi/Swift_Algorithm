import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var chars = Array(my_string)
    
    for query in queries {
        var start = query[0]
        var end = query[1]
        
        while start < end {
            chars.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
    
    return String(chars)
}