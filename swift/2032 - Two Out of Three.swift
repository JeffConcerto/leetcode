class Solution {
    func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        var numMap = [Int: Int]()
        
        for num in Set(nums1) {
            numMap[num, default: 0] += 1
        }
        
        for num in Set(nums2) {
            numMap[num, default: 0] += 1
        }
        
        for num in Set(nums3) {
            numMap[num, default: 0] += 1
        }
        
        var result = [Int]()
        for (num, count) in numMap {
            if count > 1 {result.append(num)}
        }
        
        return result
    }
}
