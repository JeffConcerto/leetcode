// Method 1

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


// Method 2 - Faster

class Solution {
    func minimumSum(_ num: Int) -> Int {
        var nums = String(num).map {$0.wholeNumberValue!}
        nums.sort()
 
        let new1 = "\(nums[0])\(nums[3])"
        let new2 = "\(nums[1])\(nums[2])"
        
        return Int(new1)! + Int(new2)!
    }
}
