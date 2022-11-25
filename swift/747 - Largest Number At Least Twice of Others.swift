// Method 1:
class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        
        let indexOfMax = getMaxIndex(nums)
        let max = nums[indexOfMax]
        
        for i in 0..<nums.count {
            guard i != indexOfMax else { continue }
            if max <  (nums[i] * 2) { return  -1 }
        }
        
        return indexOfMax
    }
    
    func getMaxIndex(_ nums: [Int]) -> Int {
        var indexOfMax = 0
        var max = nums[0]
        
        for i in 1..<nums.count {
            if nums[i] > max {
                indexOfMax = i
                max = nums[i]
            }
        }
        
        return indexOfMax
    }
}


// Method 2:
class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var maxNum = Int.min
        var maxIndex = -1
        var maxRunnerup = Int.min
        
        for index in 0..<nums.count {
            if nums[index] > maxNum {
                maxRunnerup = maxNum
                maxNum = nums[index]
                maxIndex = index
            } else if nums[index] > maxRunnerup {
                maxRunnerup = nums[index]
            }
        }
        
        return maxNum / 2 >= maxRunnerup ? maxIndex : -1
    }
}
