class Solution {
    func sumCounts(_ nums: [Int]) -> Int {
        var total = 0
        for i in 0..<nums.count {
            var set = Set<Int>()
            for j in i..<nums.count {
                set.insert(nums[j])
                total += set.count * set.count
            }
        }

        return total
    }
}
