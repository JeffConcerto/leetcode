class Solution {
    func minimumSum(_ num: Int) -> Int {
        var nums = [Int]()
        var num = num
        
        while num > 0 {
            nums.append(num % 10)
            num /= 10
        }
        
        nums = nums.sorted()
        
        let new1 = nums[0] * 10 + nums[3]
        let new2 = nums[1] * 10 + nums[2]
        
        return new1 + new2
    }
}
