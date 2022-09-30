class Solution {
    func maxSubsequence(_ nums: [Int], _ k: Int) -> [Int] {
        var numsSorted = nums.sorted(by: >)
        let maxNums = numsSorted[0..<k]
        var mapMax = [Int:Int]()
        maxNums.forEach {mapMax[$0, default:0] += 1}
        var result = [Int]()
        
        for num in nums {
            if let count = mapMax[num] {
                result.append(num)
                mapMax[num] = count - 1
                if mapMax[num] == 0 {mapMax[num] = nil}
            }
        }
        
        return result
    }
}
