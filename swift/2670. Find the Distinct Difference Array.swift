class Solution {
    func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
        var numCount = [Int:Int]()
        for num in nums {
            numCount[num, default: 0] += 1
        }

        var prefixCount = [Int:Int]()
        var result = [Int]()
        for num in nums {
            if let count = numCount[num] {
                numCount[num] = count > 1 ? count - 1 : nil
                prefixCount[num, default:0] += 1 
            }
            result.append(prefixCount.keys.count - numCount.keys.count)
        }

        return result
    }
}
