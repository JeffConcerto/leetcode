class Solution {
    func countQuadruplets(_ nums: [Int]) -> Int {
        var count = 0
        
        for index1 in 0..<nums.count where index1 + 3 < nums.count {
            for index2 in index1+1..<nums.count {
                for index3 in index2+1..<nums.count {
                    for index4 in index3+1..<nums.count {
                        if nums[index1] + nums[index2] + nums[index3] == nums[index4] { count += 1}
                    }
                }
            }
        }
        
        return count
    }
}
