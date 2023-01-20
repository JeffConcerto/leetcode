class Solution {
    func findSubsequences(_ nums: [Int]) -> [[Int]] {
        var results = Set<[Int]>()
        for i in 1..<nums.count {
            helper(Array(nums[i...nums.count-1]), nums[i-1],[nums[i-1]], &results)
        }
        return Array(results)
    }

    func helper(_ nums: [Int], _ lastNum: Int, _ currentNums: [Int], _ results: inout Set<[Int]>) {
        if currentNums.count >= 2 {
            results.insert(currentNums)
        }
        
        
         for i in 0..<nums.count {
            guard i+1 < nums.count else { 
                if nums[i] >= lastNum {
                    helper([], nums[i], currentNums + [nums[i]], &results)
                } else {
                    helper([], lastNum, currentNums, &results)
                }
                return 
            }
            if nums[i] >= lastNum {
                helper(Array(nums[i+1...nums.count-1]), nums[i], currentNums + [nums[i]], &results)
            } else if nums[i+1] != lastNum{
                helper(Array(nums[i+1...nums.count-1]), lastNum, currentNums, &results)
            }
        }

    }
}
