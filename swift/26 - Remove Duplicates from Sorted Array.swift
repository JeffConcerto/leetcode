class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        if nums.count == 1 { return 1 }
        
        var lastItemSortedIndex = 0
        
        for nextItem in 1...(nums.count - 1) {
            if nums[lastItemSortedIndex] == nums[nextItem] { continue }
            
            lastItemSortedIndex += 1
            nums[lastItemSortedIndex] = nums[nextItem]
        }
        
        return lastItemSortedIndex + 1
    }
}
