import Foundation

let s1 = readLine()!

var result: String = ""

for i in s1 {
    if i.isUppercase {
        result += i.lowercased()
    } else {
        result += i.uppercased()
    }
}

print(result)