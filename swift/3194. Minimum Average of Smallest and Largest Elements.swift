class Solution {
    func minimumAverage(_ nums: [Int]) -> Double {
        var minAvg = Double.greatestFiniteMagnitude
        let nums = nums.sorted()

        for i in 0..<nums.count/2 {
            let avg = Double(nums[i]+nums[nums.count-1-i]) / 2
            minAvg = min(minAvg,avg)
        }

        return minAvg
    }
}
