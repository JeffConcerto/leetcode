class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
       var left = 0
       var right = nums.count-1
       var result = nums
       var i = 0

       while left <= right {
           let square1 = nums[left] * nums[left]
           let square2 = nums[right] * nums[right]
           if square1 >= square2 {
               result[nums.count-1-i] = square1
               left += 1
           } else {
               result[nums.count-1-i] = square2
               right -= 1
           }
           i += 1
       }

       return result
    }
}
