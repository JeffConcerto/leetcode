class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndexMap = [Int:Int]()

        for i in 0..<nums.count {
            numToIndexMap[nums[i]] = i
        }

        for i in 0..<nums.count {
            if let index = numToIndexMap[target-nums[i]] {
                guard index != i else { continue }
                return [index, i]
            }
        }

        return [-1,-1]
    }
}
