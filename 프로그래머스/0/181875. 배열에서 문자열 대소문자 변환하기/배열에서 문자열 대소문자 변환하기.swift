import Foundation

func solution(_ strArr: [String]) -> [String] {
    return strArr.enumerated().map { (index, element) in
        if index % 2 == 0 {
            return element.lowercased() // 짝수 인덱스 (0, 2, ...) -> 소문자로 변환
        } else {
            return element.uppercased() // 홀수 인덱스 (1, 3, ...) -> 대문자로 변환
        }
    }
}