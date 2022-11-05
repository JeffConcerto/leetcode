// Method 1:
class Solution {
    func averageValue(_ nums: [Int]) -> Int {
        var sum = 0
        var count = 0
        
        for i in 0..<nums.count where nums[i] % 3 == 0 && nums[i] % 2 == 0 {
            sum += nums[i]
            count += 1
        }
        
        return sum > 0 ? sum / count : 0
    }
}


// Method 2:
class Solution {
    func averageValue(_ nums: [Int]) -> Int {
        var nums = nums.filter {$0 % 3 == 0 && $0 % 2  == 0 }
        var sum = 0
        
        for i in 0..<nums.count {
            sum += nums[i]
        }
        
        return sum > 0 ? sum / nums.count : 0
    }
}
