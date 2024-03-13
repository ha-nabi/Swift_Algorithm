import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    var result = num_list
    
    let lastNumber = result.last!
    let secondNumber = result[result.index(before: result.endIndex - 1)]
    
    if lastNumber > secondNumber {
        result.append(lastNumber - secondNumber)
    } else {
        result.append(lastNumber * 2)
    }
    
    return result
}