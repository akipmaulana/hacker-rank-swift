let arr: [[Int]] = [
    [1,1,1,0,0,0],
    [0,1,0,0,0,0],
    [1,1,1,0,0,0],
    [0,0,2,4,4,0],
    [0,0,0,2,0,0],
    [0,0,1,2,4,0]
]

var maxHourGlass: Int = -9999
let totalRow: Int = arr.count
let totalColoumn: Int = arr.first?.count ?? 0
let totalHourGlass: Int = (totalRow) * (totalColoumn)
var arrPlain: [Int] = []
let edgeColoumn = totalColoumn - 2

for i in 0..<arr.count {
    for j in 0..<arr[i].count {
        arrPlain.append(arr[i][j])
    }
}

for glass in 0..<totalHourGlass {
    let a = glass
    let b = a + 1
    let c = b + 1
    let d = c + 5
    let e = d + 5
    let f = e + 1
    let g = f + 1
    
    guard glass % totalColoumn != edgeColoumn else { continue }
    
    guard g < totalHourGlass else { break }

    let currentGlass: Int = arrPlain[a] + arrPlain[b] + arrPlain[c] + arrPlain[d] + arrPlain[e] + arrPlain[f] + arrPlain[g]

    if maxHourGlass < currentGlass {
        maxHourGlass = currentGlass
    }
}

print("Max of hourglass is \(maxHourGlass)")

