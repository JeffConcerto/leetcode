class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        let threshold = nums.count / 3

        var numCount = [Int:Int]()
        var set = Set<Int>() 

        for num in nums {
            numCount[num, default:0] += 1
            if numCount[num]! > threshold {
                set.insert(num)
            }
        }

        return Array(set)
    }
}
