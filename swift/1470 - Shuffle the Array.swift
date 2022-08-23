class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        var index = 0
        
        while index + n < nums.count {
            result.append(nums[index])
            result.append(nums[index + n])
            
            index += 1
        }
        
        return result
    }
}
