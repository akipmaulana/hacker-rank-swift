let Y = 2014
        let A = "April"
        let B = "May"
        let W = "Wednesday"
        
        let weekDay = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        
        let months = ["January", "February","March","April","May","June","July","August","September","October","November","December"]
        
        let monthDay: [Int] = [
            31,
            28 + (Y % 4 == 0 ? 1 : 0),
            31,
            30,
            31,
            30,
            31,
            31,
            30,
            31,
            30,
            31
        ]
        
        
        let firstJanuary = weekDay.firstIndex(of: W) ?? 0
        let startMonth = months.firstIndex(of: A) ?? 0
        let endMonth = months.firstIndex(of: B) ?? 0
        
        
        let totalDayFromJan = monthDay[0..<startMonth].reduce(0) { $1 + $0 }
        let totalDayDuringMonth = monthDay[startMonth...endMonth].reduce(0) { $1 + $0 }
    
        print("\(firstJanuary)")
        print("\(totalDayFromJan)")
        print("\(totalDayDuringMonth)")
        print(months)
        
        let d = (firstJanuary + totalDayFromJan) % 7
        print("d \(d)")
        let y = 7 - d
        let _day = weekDay[d]
