class Solution {
    func findClosestNumber(_ nums: [Int]) -> Int {
        var numClosest = Int.min + 1
        
        for num in nums {
            if abs(num) <= abs(numClosest) {
                if abs(numClosest) == abs(num)  {  
                    if numClosest < num {
                        numClosest = num   
                    }
                } else {
                    numClosest = num
                }
            }
        }
    
        
        return numClosest
        
    }
}
