class Solution {
    func countPairs(_ nums: [Int], _ k: Int) -> Int {
        var totalPairs = 0
        
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[i] == nums[j] {
                    if i * j % k == 0 { totalPairs += 1}
                }
            }
        }
        
        return totalPairs
        
    }
}
