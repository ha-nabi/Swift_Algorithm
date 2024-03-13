import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var result: [Int] = [] 
    
    for i in num_list.prefix(n) {
        result.append(i)
    }
    return result
}