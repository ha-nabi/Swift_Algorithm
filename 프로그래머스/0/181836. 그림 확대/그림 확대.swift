import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var enlargedPicture: [String] = []
    
    for row in picture {
        let enlargedRow = row.map { String(repeating: $0, count: k) }.joined()
        
        for _ in 0..<k {
            enlargedPicture.append(enlargedRow)
        }
    }
    
    return enlargedPicture
}