import Foundation

func solution(_ num_list:[Int]) -> Int {
    let product = num_list.reduce(1, *)
    let sum = num_list.reduce(0, +)
    
    let result = sum * sum
    
    return product < result ? 1 : 0 
}