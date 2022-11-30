class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var hash = [Int:Int]()
        let majority = nums.count / 2
        
        for num in nums {
            hash[num, default:0] += 1
            if hash[num]! > majority {
                return num
            }
        }
        
        return -1
    }
}

