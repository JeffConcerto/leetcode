class Solution {
    func divideArray(_ nums: [Int], _ k: Int) -> [[Int]] {
        let nums = nums.sorted()
        var result = [[Int]]()
        var temp = [nums[0]]
        for i in 1..<nums.count {
            if !temp.isEmpty && nums[i] - temp.first! > k { return [] }
            temp.append(nums[i])
            if temp.count == 3 { result.append(temp); temp = [] }
        }

        return result
    }
}

