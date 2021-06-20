import Foundation

let s: String = "aaa"
let n: Int = 100000000000000000
var occurrence: Int = 0

let filteredS = s.replacingOccurrences(of: "a", with: "")
if filteredS.isEmpty {
    occurrence = n
} else {
    let subMatched: Int = s.reduce(0) { $1 == "a" ? $0 + 1 : $0 }
    let sLength: Int = s.count
    let modulus: Int = n % sLength
    let minDiv: Int = n / sLength
    if modulus == 0 {
        occurrence = subMatched * minDiv
    } else {
        let subStringByMod = s.prefix(modulus)
        let subMatchedByMod = subStringByMod.reduce(0) { $1 == "a" ? $0 + 1 : $0 }
        occurrence = subMatched * minDiv + subMatchedByMod
    }
}

print("Occurrence a's \(occurrence)")

