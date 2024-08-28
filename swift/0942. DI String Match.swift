class Solution {
    func diStringMatch(_ s: String) -> [Int] {
        var result = [Int]()
        var left = 0
        var right = s.count
        
        for char in s {
            if char == "I" {
                result.append(left)
                left += 1
            } else {
                result.append(right)
                right -= 1
            }
        }

        result.append(left)
        return result
    }
}
