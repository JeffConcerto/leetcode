class Solution {
    func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
        var lastIndexOf1: Int? = nil
        var currentDistance = 0
        
        for (index, num) in nums.enumerated() {
            if num == 1 {
                if let lastIndex = lastIndexOf1 {
                    if currentDistance < k { return false }
                    currentDistance = 0
                }
                lastIndexOf1 = index
            } else {
                currentDistance += 1
            }
        }
        
        return true
    }
}
