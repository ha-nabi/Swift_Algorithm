import Foundation

func solution(_ my_string:String) -> [Int] {
        // 길이 52의 배열을 0으로 초기화
    var frequency = Array(repeating: 0, count: 52)
    
    // 각 문자의 빈도 계산
    for char in my_string {
        if let asciiValue = char.asciiValue {
            if char.isUppercase {
                frequency[Int(asciiValue - 65)] += 1  // 'A'의 아스키 값은 65
            } else if char.isLowercase {
                frequency[Int(asciiValue - 97) + 26] += 1  // 'a'의 아스키 값은 97, 소문자는 26번째 이후에 위치
            }
        }
    }
    
    return frequency
}