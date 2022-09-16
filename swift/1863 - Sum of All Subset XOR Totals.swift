class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        var subsets: [[Int]] = [[]]
        
        for num in nums {
            for set in subsets {
                subsets.append(set + [num])
                
            }
        }
        
        var sum = 0
        
        for set in subsets where !set.isEmpty {
            var total = 0
            for index in 0..<set.count {
              total ^= set[index]  
            }
            sum += total
        }
        return sum
    }
}
