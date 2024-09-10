import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var eligibleStudents = [(index: Int, rank: Int)]()
    
    for (index, rankValue) in rank.enumerated() {
        if attendance[index] {
            eligibleStudents.append((index, rankValue))
        }
    }
    
    eligibleStudents.sort { $0.rank < $1.rank }
    
    let selected = eligibleStudents.prefix(3)
    
    if let a = selected.first?.index, let b = selected.dropFirst().first?.index, let c = selected.dropFirst(2).first?.index {
        return 10000 * a + 100 * b + c
    }
    
    return 0 
}