class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var even = 0
        var odd = nums.count - 1
        var nums = nums
        var i = 0
        
        while even < odd {
             if nums[i] % 2 == 0 {
                nums.swapAt(i,even)
                even += 1
                i += 1
            } else {
                nums.swapAt(i,odd)
                odd -= 1
            }
        }

        return nums
    }
}
