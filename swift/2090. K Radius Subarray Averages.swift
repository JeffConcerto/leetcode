class Solution {
    func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
        let count = k + k + 1
        var result = Array(repeating: -1, count: nums.count)
        if count > nums.count { return result }
        if k == 0 { return nums }

        var presum = 0
        var sufsum = 0

       for i in 0..<k {
           presum += nums[i]
       }

       for i in k+1...k+k {
           sufsum += nums[i]
       }

       var i = k

       while i + k < nums.count {
           let total = nums[i] + presum + sufsum
           result[i] = (total/count)
            presum -= nums[i-k]
            presum += nums[i]
            sufsum -= nums[i+1]
            if i + k + 1 < nums.count {
                sufsum += nums[i+1+k]
            }
            i += 1
       }
        
        return result
    }
}
