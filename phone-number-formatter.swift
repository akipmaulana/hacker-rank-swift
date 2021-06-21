import Foundation

let rawPhoneNumber = "00 -123- 1230123-001230"
let range = NSRange(location: 0, length: rawPhoneNumber.utf16.count)
        
if let _ = Int(rawPhoneNumber), rawPhoneNumber.count == 2 {
    print("just return \(rawPhoneNumber)")
} else {
    
    let regex = try! NSRegularExpression(pattern: "[^0-9]")
    let filtered = regex.stringByReplacingMatches(in: rawPhoneNumber, options: [], range: range, withTemplate: "")
    let modulusTail = filtered.count % 3
    
    var lastBreak: Int = -1
    var resultFormatted: String = ""
    for (id, ch) in filtered.enumerated() {
        if modulusTail == 1 && id == filtered.count - 4 {
            lastBreak = id
            break
        }
        
        resultFormatted.append(ch)
        if id != filtered.count - 1 && (id + 1) % 3 == 0 {
            resultFormatted.append("-")
        }
    }
    
    if lastBreak > 0 {
        for i in lastBreak..<filtered.count {
            let index = filtered.index(filtered.startIndex, offsetBy: i)
            resultFormatted.append(filtered[index])
            if i != filtered.count - 1 && i % 2 == 1 {
                resultFormatted.append("-")
            }
        }
    }

    print("Result : \(resultFormatted)")
}

