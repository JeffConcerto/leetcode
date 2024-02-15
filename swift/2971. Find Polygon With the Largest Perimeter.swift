class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
        let nums = nums.sorted(by:>)
        var total = nums.reduce(0,+)
        
        var maxPerim = -1

        for i in 0..<nums.count {
            let count = nums.count - i
            if count < 3 { break }
            let otherSides = total - nums[i]
            if otherSides > nums[i] {
                maxPerim = max(maxPerim, total)
            }
            total -= nums[i]
        }

        return maxPerim
    }
}
