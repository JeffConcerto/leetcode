// New Solution:
class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = Array(repeating: 0, count: n*2)

        for i in 0..<n {
            result[i*2] = nums[i]
            result[i*2+1] = nums[i+n]
        }

        return result
    }
}

// Solution 1:
class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        var index = 0
        
        while index + n < nums.count {
            result.append(nums[index])
            result.append(nums[index + n])
            
            index += 1
        }
        
        return result
    }
}

// Soultuon 2:
class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        // Split array into two halves:
        let nums1 = Array(nums[0..<n])
        let nums2 = Array(nums[n...nums.count-1])
        
        var result = [Int]()

        // Merge arrays into single array:
        for i in 0..<nums.count {
            if i % 2 == 0 {
              result.append(nums1[i/2])  
            } else {
                result.append(nums2[i/2])
            }
        }

        return result
    }
}
