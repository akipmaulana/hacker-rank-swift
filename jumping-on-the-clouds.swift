let clouds: [Int] = [0, 1, 0, 0, 0, 0, 0]
var cumulus: [Int] = []
var oneJump: Int = 0

for idx in 0..<clouds.count {
    if clouds[idx] == 0 {
        cumulus.append(idx)
    } else {
        continue
    }

    print("Cumulus \(cumulus)")

    let totalCumulus = cumulus.count
    if totalCumulus > 1 {
        let lastCumulus = cumulus[totalCumulus - 1]
        let prevCumulus = cumulus[totalCumulus - 2]

        let jump = lastCumulus - prevCumulus
        oneJump = jump == 1 ? oneJump + 1 : 0
    }

    // able to twice jump 
    if oneJump == 2 {
        cumulus.remove(at: totalCumulus - 2)
        oneJump  = 0
    }
}

print("Minimum to jump is \(cumulus.count - 1)")
