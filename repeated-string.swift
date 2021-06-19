import Foundation

let s: String = "aaa"
let n: Int = 100000000000000000
var occurrence: Int = 0

let filteredS = s.replacingOccurrences(of: "a", with: "")
if filteredS.isEmpty {
    occurrence = n
} else {
    var repeatedS: String = String(repeating: s, count: n)
    repeatedS = String(repeatedS.prefix(n))
    occurrence  = repeatedS.reduce(0) { $1 == "a" ? $0 + 1 : $0  }
}

print("Occurrence a's \(occurrence)")

