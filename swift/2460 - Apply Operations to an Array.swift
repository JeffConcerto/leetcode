// Method 1:
class Solution {
    func applyOperations(_ nums: [Int]) -> [Int] {
        var nums = nums
        var indexSet: Set<Int> = []

        for i in 0..<nums.count - 1 {
            if nums[i] == nums[i+1] {
                nums[i] *= 2
                nums[i+1] = 0
            }
            if nums[i] == 0 {
                indexSet.insert(i)
            }
        }
        
        var newNums = [Int]()
        
        for i in 0..<nums.count {
            if indexSet.contains(i) { continue }
            newNums.append(nums[i])
        }
        
        for _ in 0..<indexSet.count {
            newNums.append(0)
        }
    
        return newNums
    }
}

// Method 2:
class Solution {
    func applyOperations(_ nums: [Int]) -> [Int] {
        var nums = nums
        var newNums = [Int]()
        var count = 0

        for i in 0..<nums.count - 1 {
            if nums[i] == nums[i+1] {
                nums[i] *= 2
                nums[i+1] = 0
            }
            if nums[i] == 0 {
                count += 1
            } else {
                newNums.append(nums[i])
            }
        }
        
        newNums.append(nums[nums.count-1])
         
        for _ in 0..<count {
            newNums.append(0)
        }
    
        return newNums
    }
}
