class Solution {
    func semiOrderedPermutation(_ nums: [Int]) -> Int {
        var nums = nums
        var i = 0
        var count = 0

        // Move 1 to the start:
        if nums[0] != 1 {
            var i = 1
            while nums[i] != 1 {
                i += 1
            }
            while nums[0] != 1 {
                nums.swapAt(i,i-1)
                count += 1
                i -= 1
            }
        }

        if nums.last! != nums.count {
            var i = 1
            while nums[i] != nums.count {
                i += 1
            }

            while nums.last! != nums.count {
                nums.swapAt(i,i+1)
                count += 1
                i += 1
            }

        }
        
        

        return count
    }
}
