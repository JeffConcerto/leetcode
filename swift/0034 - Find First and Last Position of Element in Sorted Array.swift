class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var start = -1
        var end = -1
        
        var low = 0
        var high = nums.count - 1
        
        var targetMiddle = -1
        
        while low <= high {
            let middle = (low + high) / 2
            
            if nums[middle] == target {
                targetMiddle = middle
                break
            } else if nums[middle] < target {
                low = middle + 1
            } else {
                high = middle - 1
            }
        }
        
       guard targetMiddle != -1 else { return [-1,-1] }

        start = targetMiddle
        while start - 1 >= 0 && nums[start-1] == target {
            start -= 1
        }
        
        end = targetMiddle
        while end + 1 < nums.count && nums[end+1] == target {
            end += 1
        }
        
        return [start, end]
    }
}
