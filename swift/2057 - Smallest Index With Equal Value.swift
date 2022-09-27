class Solution {
    func smallestEqual(_ nums: [Int]) -> Int {
        for index in 0..<nums.count {
            if index % 10 == nums[index] { return index }
        }
        
        return -1
    }
}
