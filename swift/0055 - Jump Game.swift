class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return true }
        if nums[0] == 0 { return false }
        for i in 1..<nums.count-1 {
            guard nums[i] == 0 else { continue }
            var j = i-1
            var back = 1
            var canGoBack = false
            while j >= 0 {
                if nums[j] > back { canGoBack = true; break }
                back += 1
                j -= 1
            }
            if !canGoBack { return false }
    }
    return true
    }
}
