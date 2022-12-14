// NEEDED HELP TO GET SOLUTION:
class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var nums = nums.sorted()
        
        return kSum(nums: nums, target: target, k: 4)
    }
    
    private func kSum(nums: [Int], target: Int, k: Int) -> [[Int]] {
        var result = [[Int]]()
        
        // If we run out of numbers to add, return result:
        guard !nums.isEmpty else { return result }
        
        // There are k remaining values to add to the sum.
        // The average of these values is at least target / k:
        let averageValue = target == 0 ? 0 : target / k
        
        // We cannnot obtain a sum of target if the smallest value
        // in nums is greater than the averageValue nor if the
        // largest value in nums is smaller than the averageValue:
        if nums[0] > averageValue || nums.last! < averageValue {
            return result
        }
        
        if k == 2 { return twoSum(nums, target) }
        
        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i-1] { continue }
            let updatedNums = Array(nums[i+1..<nums.count])
            for subset in kSum(nums: updatedNums, target: target - nums[i], k: k-1) {
                result.append([nums[i]] + subset)
            }
        }
        
        return result
    }
    
    private func twoSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var low = 0
        var high = nums.count - 1
        
        while low < high {
            let currentSum = nums[low] + nums[high]
            
            if currentSum < target || (low > 0 && nums[low] == nums[low-1]) {
                low += 1
            } else if currentSum > target || (high < nums.count - 1 && nums[high] == nums[high+1]) {
                high -= 1
            } else {
                result.append([nums[low], nums[high]])
                low += 1
                high -= 1
            }
        }
        
        return result
        
    }
}


// From Memory/Understanding - 24 Hours Later:
class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var nums = nums.sorted()
        
        return kSum(nums, target, 4)
    }
    
    private func kSum(_ nums: [Int], _ target: Int, _ k: Int) -> [[Int]] {
        guard !nums.isEmpty else { return [] }
        
        let avgValue = target / k
        
        guard nums[0] <= avgValue && nums.last! >= avgValue else { return [] }
        
        guard k > 2 else { return twoSum(nums, target) }
        
        var result = [[Int]]()
        
        for i in 0..<nums.count {
            guard i == 0 || nums[i] != nums[i-1] else {
                continue
            }
            
            for subset in kSum(Array(nums[i+1..<nums.count]), target - nums[i], k - 1) {
                result.append([nums[i]] + subset)
            }
        }
        
        
        return result
    }
    
    private func twoSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var low = 0
        var high = nums.count - 1
        
        while low < high {
            guard low == 0 || nums[low] != nums[low-1] else {
                low += 1
                continue
            }
            guard high == nums.count - 1 || nums[high] != nums[high+1] else {
                high -= 1
                continue
            }
            
            let sum = nums[low] + nums[high]
            
            if sum < target {
                low += 1
            } else if sum > target {
                high -= 1
            } else {
                result.append([nums[low], nums[high]])
                low += 1
                high -= 1
            }
        }
        
        return result
    }  
}


