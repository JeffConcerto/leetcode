class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var num1Map = [Int:Int]()
        var num2Map = [Int:Int]()

        for num in nums1 {
            num1Map[num, default: 0] += 1
        }

        for num in nums2 {
            num2Map[num, default: 0] += 1
        }

        var result = [Int]()

        for (key, value1) in num1Map {
            if let value2 = num2Map[key] {
                for i in 0..<min(value1,value2) {
                    result.append(key)        
                }
            }
        }

        return result
    }
}
