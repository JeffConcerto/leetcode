// Method 1:
func maximumProduct(_ nums: [Int]) -> Int {
       let nums = nums.sorted()

       let option1 = nums[0] * nums[1] * nums[nums.count-1]
       let option2 = nums[nums.count-1] * nums[nums.count-2] * nums[nums.count-3]
       return max(option1, option2)
    }
}

// Method 2:
class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
       var maxes = [Int.min, Int.min, Int.min]
       var mins = [Int.max, Int.max]
       
    
       for num in nums {
           if num > maxes[2] {
               if num > maxes[0] {
                    maxes[2] = maxes[1]
                    maxes[1] = maxes[0]
                    maxes[0] = num
               } else if num > maxes[1] {
                   maxes[2] = maxes[1]
                   maxes[1] = num
               } else {
                   maxes[2] = num
               }
           }
             if num < mins[1] {
               if num < mins[0] {
                   mins[1] = mins[0]
                   mins[0] = num
               } else {
                   mins[1] = num
               }
           }
       }

       let option1 = mins[0] * mins[1] * maxes[0]
       let option2 = maxes[0] * maxes[1] * maxes[2]
       return max(option1, option2)
    }
}
