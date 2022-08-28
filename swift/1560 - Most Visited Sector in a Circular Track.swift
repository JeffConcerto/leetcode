class Solution {
    func mostVisited(_ n: Int, _ rounds: [Int]) -> [Int] {
        var countMap = [Int: Int]()
        
        for index in 1..<rounds.count {
            var start = rounds[index-1]
            let finish = rounds[index]
            
            while start != finish {
                countMap[start, default: 0] += 1
                start += 1
                start %= n + 1
            }
        }
        
        countMap[rounds.last!, default: 0] += 1
        countMap[0] = nil
        print(countMap)
        let max = countMap.values.max()
        
        return Array(countMap.filter { $0.value == max }.keys).sorted()
    
    }
}
