class Solution {
    func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
        var count = 0
        
        for i in 0..<nums.count - 2 {
            for j in i+1..<nums.count - 1 {
                if nums[j] - nums[i] != diff { continue }
                for k in j+1..<nums.count {
                    if nums[k] - nums[j] == diff { count += 1 }
                }
            }
        }
 
        return count
    }
}
