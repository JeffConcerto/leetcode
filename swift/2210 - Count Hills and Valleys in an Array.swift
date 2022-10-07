class Solution {
    func countHillValley(_ nums: [Int]) -> Int {
        var currentLevel = "none"
        var count = 0
        for i in 1..<nums.count-1 {
            var previousNum = nums[i-1]
            var previousIndex = i - 2
            
            while previousIndex >= 0 && nums[i] == previousNum {
                previousNum = nums[previousIndex]
                previousIndex -= 1
            }
            
            var nextNum = nums[i+1]
            var nextIndex = i+2
            
            while nextIndex < nums.count && nums[i] == nextNum {
                nextNum = nums[nextIndex]
                nextIndex += 1
            }
            
            if nums[i] > previousNum && nums[i] > nextNum {
                if currentLevel == "hill" { continue }
                currentLevel = "hill"
                count += 1
            } else if nums[i] < previousNum && nums[i] < nextNum {
                if currentLevel == "valley" { continue }
                currentLevel = "valley"
                count += 1
            }
        }
        
        return count
    }
}
