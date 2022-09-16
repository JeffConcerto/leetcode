class Solution {
    func maximumPopulation(_ logs: [[Int]]) -> Int {
        var yearMap = [Int: Int]()
        
        for log in logs {
            for year in log[0]..<log[1] {
                yearMap[year, default: 0] += 1
            }
        }
        
        let max = yearMap.values.max()
        
        let year = yearMap.filter {$0.1 == max}.keys.sorted {$0 < $1}.first!
        
        return year
    }
}
