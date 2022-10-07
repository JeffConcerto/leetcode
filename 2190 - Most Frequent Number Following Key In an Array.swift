class Solution {
    func mostFrequent(_ nums: [Int], _ key: Int) -> Int {
        var map = [Int:Int]()
        var maxCount = 0
        var maxNum = Int.min
        
        for i in 0..<nums.count - 1 {
            if nums[i] == key {
                map[nums[i+1], default: 0] += 1
                if map[nums[i+1]]! > maxCount {
                    maxCount = map[nums[i+1]]!
                    maxNum = nums[i+1]
                }
            }
        }
        
        return maxNum
    }
}
