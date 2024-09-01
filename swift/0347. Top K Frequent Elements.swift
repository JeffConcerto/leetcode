// New Solution:
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        let map = nums.reduce(into:[:]) { $0[$1,default:0] += 1 }

        var result = [Int]()

        for (num, freq) in map.sorted { $0.value > $1.value } {
            result.append(num)
            if result.count == k { break }
        }

        return result
    }
}

// Old Solution:
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
       var countMap = [Int: Int]()

       for num in nums {
           countMap[num, default: 0] += 1
       }

       let maxCounts = countMap.map { (key, value) in return (key,value)}.sorted { $0.1 > $1.1 }.map { return $0.0}[0..<k]

       return Array(maxCounts)
    }
}
