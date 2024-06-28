class Solution {
    func maximumImportance(_ n: Int, _ roads: [[Int]]) -> Int {
        var count = [Int:Int]()

        for road in roads {
            count[road[0], default:0] += 1
            count[road[1], default:0] += 1
        }

        var roadVal = [Int:Int]()
        var n = n
        for (road, _) in count.sorted { $0.1 > $1.1} {
            roadVal[road] = n
            n -= 1
        }

        var sum = 0
        for road in roads {
            sum += roadVal[road[0]]!
            sum += roadVal[road[1]]!
        }

        return sum
    }
}
