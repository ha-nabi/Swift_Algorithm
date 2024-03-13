import Foundation

func solution(_ a: Int, _ d: Int, _ included: [Bool]) -> Int {
    var total = 0
    
    for (index, isIncluded) in included.enumerated() {
        if isIncluded {
            total += a + d * index
        }
    }
    
    // 모든 계산이 끝나면 total을 반환합니다.
    return total
}