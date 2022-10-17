class Solution {
    func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {
        var nums = nums.sorted()
        var result = [Int]()
        
        for sum in queries {
            var tempSum = 0
            var count = 0
            
            for num in nums {
                if tempSum + num > sum { break }
                tempSum += num
                count += 1
            }
            
            result.append(count)
        }
        
        return result
    }
}
