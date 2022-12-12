class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var storage = [[Int]]()
        for i in 0..<nums.count {
            helper(Array(nums[0..<i]) + Array(nums[i+1..<nums.count]), [nums[i]], &storage)
        }

        return storage
    }
    
    private func helper(_ nums: [Int], _ selection: [Int], _ storage: inout [[Int]]) {
        guard !nums.isEmpty else {
            storage.append(selection)
            return
        }

        for i in 0..<nums.count {
            helper(Array(nums[0..<i]) + Array(nums[i+1..<nums.count]), selection + [nums[i]], &storage)
        }
    }
}
