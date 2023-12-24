class Solution {
    func numberGame(_ nums: [Int]) -> [Int] {
        let nums = nums.sorted()
        var arr = [Int]()

        for i in 0..<nums.count/2 {
            arr.append(nums[i*2+1])
            arr.append(nums[i*2])
        }

        return arr
    }
}
