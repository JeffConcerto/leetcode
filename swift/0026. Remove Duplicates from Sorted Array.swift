class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var set = Set<Int>()
        var left = 0

        for (i, num) in nums.enumerated() {
            if set.contains(num) { continue }
            set.insert(num)
            nums[left] = nums[i]
            left += 1
        }
        return set.count
    }
}



