class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var nums = Array(0..<n)
        nums = nums.map { start + 2 * $0  }
        
        var result = 0
        for num in nums {
            result ^= num
        }
        
        return result
    }
}
