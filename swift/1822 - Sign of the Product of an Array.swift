// Method 1:
class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var totalNegatives = 0
        
        for i in 0..<nums.count {
            if nums[i] < 0 {
                totalNegatives += 1
            } else if nums[i] == 0 {
                return 0
            }
        }
        
        return totalNegatives % 2 == 0 ? 1 : -1
    }
}

// Method 2:
class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        let set = Set(nums)
        if set.contains(0) { return 0 }
        
        return nums.filter {$0 < 0 }.count % 2 == 0 ? 1 : -1
    }
}
