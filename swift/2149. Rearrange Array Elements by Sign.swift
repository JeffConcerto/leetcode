class Solution {
    func rearrangeArray(_ nums: [Int]) -> [Int] {
        var positive = 0, negative = 0
        var result = [Int]()
        for i in 0..<nums.count {
            if i % 2 == 0 {
                // Get next postive number:
                while nums[positive] < 0 {
                    positive += 1
                }
                result.append(nums[positive])
                positive += 1
            } else {
                // - Get nex negative number:
                while nums[negative] >= 0 {
                    negative += 1
                }
                result.append(nums[negative])
                negative += 1
            }
        }

        return result
    }
}
