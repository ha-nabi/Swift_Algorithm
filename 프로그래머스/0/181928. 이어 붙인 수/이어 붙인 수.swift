import Foundation

func solution(_ num_list:[Int]) -> Int {
    var oddStr = ""
    var evenStr = ""
    
    for i in num_list {
        if i % 2 == 0 {
            oddStr += "\(i)"
        } else {
            evenStr += "\(i)"
        }
    }
    
    return Int(oddStr)!  + Int(evenStr)!
}