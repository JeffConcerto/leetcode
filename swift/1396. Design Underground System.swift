class UndergroundSystem {

    private var dataMap = [Int: [[String]]]()

    init() {}
    
    func checkIn(_ id: Int, _ stationName: String, _ t: Int) {
        dataMap[id, default: []].append([stationName, String(t)])
    }
    
    func checkOut(_ id: Int, _ stationName: String, _ t: Int) {
        guard dataMap[id] != nil else { return }

        dataMap[id]![dataMap[id]!.count-1] += [stationName,String(t)]
        
    }
    func getAverageTime(_ startStation: String, _ endStation: String) -> Double {
        var totalTime = 0
        var trips = 0
        for (_, data) in dataMap {
            for values in data {
                guard values.count == 4 else { continue }
                for i in 0..<values.count {
                    guard values[0] == startStation && values[2] == endStation  else { continue }
                    trips += 1
                    totalTime += Int(values[3])! - Int(values[1])!
                }
            }
        }

        return Double(totalTime) / Double(trips)
    }
}

/**
 * Your UndergroundSystem object will be instantiated and called as such:
 * let obj = UndergroundSystem()
 * obj.checkIn(id, stationName, t)
 * obj.checkOut(id, stationName, t)
 * let ret_3: Double = obj.getAverageTime(startStation, endStation)
 */
