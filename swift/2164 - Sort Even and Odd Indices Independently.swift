class Solution {
    func sortEvenOdd(_ nums: [Int]) -> [Int] {
        var evenArray = [Int]()
        var oddArray = [Int]()
        
        for i in 0..<nums.count {
            if i % 2 == 0 {
                evenArray.append(nums[i])
            } else {
                oddArray.append(nums[i])
            }
        }
        
        evenArray.sort()
        oddArray = oddArray.sorted(by: >)
        
        var result = [Int]()
        
        let count = nums.count % 2 == 0 ? nums.count / 2 : nums.count / 2 + 1
        
        for i in 0..<count {
            result.append(evenArray[i])
            result.append(oddArray[i])
        }
        
        return result
        
    }
}
