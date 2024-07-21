import Foundation

func solution(_ myStr:String) -> [String] {
    let parts = myStr.split { $0 == "a" || $0 == "b" || $0 == "c" }
    let nonEmptyParts = parts.filter { !$0.isEmpty }
    
    return nonEmptyParts.isEmpty ? ["EMPTY"] : nonEmptyParts.map { String($0) }
}