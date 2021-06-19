let n: Int = 9
let socks: [Int] = [10, 20, 20, 10, 10, 30, 50, 10, 20]
var numberOfPair: Int = 0
var paired: [Int] = []
for sock in socks {
    if !paired.contains(sock) {
        let filtered = socks.filter{ $0 == sock }
        numberOfPair += filtered.count/2 
        paired.append(sock)
    }
}
print("Number pair of sock: \(numberOfPair)")

