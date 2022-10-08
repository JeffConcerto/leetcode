class Solution {
    func findKDistantIndices(_ nums: [Int], _ key: Int, _ k: Int) -> [Int] {
        var keyIndex = [Int]()
        var result = [Int]()
        
        for i in 0..<nums.count {
            if nums[i] == key { keyIndex.append(i) }
        }
        
        for i in 0..<nums.count {
            for j in 0..<keyIndex.count {
                if abs(i-keyIndex[j]) <= k {
                    result.append(i)
                    break
                }
            }
        }
        
        return result
    }
}
