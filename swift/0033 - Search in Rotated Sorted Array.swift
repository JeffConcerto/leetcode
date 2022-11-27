// Needed help to get solution:
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 1 else { return nums[0] == target ? 0 : -1 }
        
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            var middle = (low + high) / 2
            
            guard nums[middle] != target else {
                return middle
            }
            
            if nums[middle] >= nums[low] {
                if target >= nums[low] && target < nums[middle] {
                    high = middle - 1
                } else {
                    low = middle + 1
                }
            } else {
                if target <= nums[high] && target > nums[middle] {
                    low = middle + 1
                } else {
                    high = middle - 1
                }
            }
            
        }
     
        return -1
    }
}
