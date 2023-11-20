class Solution {
    func garbageCollection(_ garbage: [String], _ travel: [Int]) -> Int {
        var travelCost = 0
        var lastSeen = [0,0,0]

        for (index, garb) in garbage.enumerated() {
            for char in garb {
                travelCost += 1
                if index > 0 {
                    var last = index
                    switch char {
                        case "G":
                        last = lastSeen[0]
                        lastSeen[0] = index
                        case "P":
                        last = lastSeen[1]
                        lastSeen[1] = index
                        case "M":
                        last = lastSeen[2]
                        lastSeen[2] = index
                        default:
                        break
                    }

                        if last != index {
                            for i in last..<index {
                                travelCost += travel[i]
                            }
                        }
                }

            }
        }
        return travelCost
    }
}
