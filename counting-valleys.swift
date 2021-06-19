
let path: String = "UDUDUDUD"
var numberOfValley: Int = 0
let seaLevel: Int = 0
var altitude: Int = 0
var downhill: Bool = false
var lastAltitude: Int = 0

for step in path {
    altitude = altitude + (step == "U" ? 1 : -1)
    downhill = lastAltitude < seaLevel
    lastAltitude = altitude
    if downhill && altitude == 0 {
        numberOfValley += 1
    }
}
print("The hiker enters and leaves \(numberOfValley) vally")
