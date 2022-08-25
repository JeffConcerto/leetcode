class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
       var goodPairCount = 0
        
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[i] == nums[j] { goodPairCount += 1 }
            }
        }
        
        return goodPairCount
    }
}
