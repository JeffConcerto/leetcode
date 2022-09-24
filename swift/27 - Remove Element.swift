
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        for (index, value) in nums.enumerated().reversed() {
            if nums[index] == val {
                nums.remove(at: index)
            }
        }
        
        return nums.count
        
    }
}
