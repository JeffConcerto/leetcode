class Solution {
    func getMinDistance(_ nums: [Int], _ target: Int, _ start: Int) -> Int {
        
        var minimum = Int.max
        
        for index in 0..<nums.count {
            if nums[index] == target {
                minimum = min(minimum, abs(index - start))
            }
        }
        
        return minimum
    }
}
