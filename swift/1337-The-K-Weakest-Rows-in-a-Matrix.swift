class Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var mapCount: [Int : [Int]] = [:]
        
        for (rowIndex, row) in mat.enumerated() {
            var soldierCount = 0
            for value in row {
                soldierCount += value == 1 ? 1 : 0
            }
            mapCount[soldierCount, default: []] += [rowIndex]
        }
        
        var results = [Int]()
        
        let sortedCounts = mapCount.keys.sorted()
        
        for count in sortedCounts {
            let arrayOfRows = mapCount[count]!
            
            for row in arrayOfRows {
                results.append(row)
            }
        }
        
        return Array(results[0..<k])
        
    }
}
