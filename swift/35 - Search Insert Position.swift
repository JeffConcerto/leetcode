class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var min = 0
        var max = nums.count - 1
        
        while min <= max { 
           let middle = (min + max) / 2
            
            if nums[middle] == target { return middle }
            
            if target < nums[middle] {
                max = middle - 1
            } else {
                min = middle + 1
            }
        }
        
        return min
    }
}
