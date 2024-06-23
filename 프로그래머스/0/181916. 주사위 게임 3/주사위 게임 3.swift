import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let dice = [a, b, c, d]
    let counts = Dictionary(grouping: dice, by: { $0 }).mapValues { $0.count }
    
    if counts.count == 1 {
        // 네 주사위에서 나온 숫자가 모두 같다면
        return 1111 * dice[0]
    }
    
    if counts.count == 2 {
        let keys = Array(counts.keys)
        let p = keys[0]
        let q = keys[1]
        if counts[p]! == 3 || counts[q]! == 3 {
            // 세 주사위에서 나온 숫자가 같고 나머지 다른 주사위에서 나온 숫자가 다르다면
            let triplet = counts[p]! == 3 ? p : q
            let single = counts[p]! == 1 ? p : q
            return (10 * triplet + single) * (10 * triplet + single)
        } else {
            // 두 주사위씩 같은 값이 나온다면
            return (p + q) * abs(p - q)
        }
    }
    
    if counts.count == 3 {
        // 어느 두 주사위에서 나온 숫자가 같고 나머지 두 주사위에서 나온 숫자가 각각 다르다면
        var pair = 0
        var singles = [Int]()
        for (key, value) in counts {
            if value == 2 {
                pair = key
            } else {
                singles.append(key)
            }
        }
        return singles[0] * singles[1]
    }
    
    if counts.count == 4 {
        // 네 주사위에 적힌 숫자가 모두 다르다면
        return dice.min()!
    }
    
    return 0
}