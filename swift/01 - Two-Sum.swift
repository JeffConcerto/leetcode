// Updated Solution with Comments
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexMap = [Int: Int]()
        
        // Make a key/value mapping of nums
        // with key == num and value == index:
        for i in 0..<nums.count {
            indexMap[nums[i]] = i
        }
        
        var result = [Int]()
        
        // Find the two numbers that add up to target
        // by iterating over nums and subtracting current number 
        // from target and checking the remainder exists in 
        // indexMap. The remainder will serve as the key
        // to indexMap that unlocks the index of that number:
        for i in 0..<nums.count {
            let remainder = target - nums[i]
            // Make sure the same element isn't used twice:
            if let secondIndex = indexMap[remainder], secondIndex != i {
                result = [i, secondIndex]
                break
            }
        }
        
        return result
    }
}

// Previous Solution
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numMap = [Int: Int]()
        
        for (index, value) in nums.enumerated() {
            numMap[value] = index
        }
        
        for (index, value) in nums.enumerated() {
            let revisedTarget = target - value
            if let secondNumIndex = numMap[revisedTarget], index != secondNumIndex {
                return [index, secondNumIndex]
            }
        }
        
        return []
    }
}
