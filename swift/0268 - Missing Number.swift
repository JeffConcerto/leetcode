// Method 1:
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0,+)
        let n = nums.count
        let total = Array(0...n).reduce(0,+)
        return total - sum
    }
}

// Method 2:
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var set = Set(0...nums.count)
        
        for num in nums {
            set.remove(num)
        }
        
        return set.first!
        
    }
}

// Method 3:
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
       let nums = nums.sorted()
        
        var i = 0
        for num in nums {
            if num != i { return i}
            i += 1
        }
        
        return i
    }
}


// Method 4:
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {        
        var totalSum = 0
        var sum = 0
        
        for i in 0..<nums.count {
           sum += nums[i]
            totalSum += i
        }
        
        totalSum += nums.count
        
        return totalSum - sum
    }
}
