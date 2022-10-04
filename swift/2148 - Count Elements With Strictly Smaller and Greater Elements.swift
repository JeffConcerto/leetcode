class Solution {
    func countElements(_ nums: [Int]) -> Int {
       var nums = nums.sorted()
        let min = nums[0]
        let max = nums.last!
        
        var count = 0
        
        for num in nums {
            if num > min && num < max { count += 1}
        }
        
        return count
    }
}
