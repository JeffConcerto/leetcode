class Solution {
    func triangleType(_ nums: [Int]) -> String {
       let set = Set(nums)
       let type = set.count == 1 ? "equilateral" : set.count == 2 ? "isosceles" : "scalene"

       if nums[0] + nums[1] <= nums[2] || nums[1] + nums[2] <= nums[0] || nums[0] + nums[2] <= nums[1] {
           return "none"
       }
       
       return type
    }
}
