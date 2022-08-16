class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let numsSorted = nums.sorted()
        
        var result = [Int]()
        
        for num in nums {
            if let count = numsSorted.firstIndex(of: num) {
                result.append(count)
            }
        }
        
        return result
    }
}
