class Solution {
    func countNicePairs(_ nums: [Int]) -> Int {
        let mod = 1_000_000_007
        var pairs = 0
        var map = [Int:Int]()

        for num in nums {
            let diff = num - reverse(num)
            map[diff, default: 0] += 1
        }
        
        for (_, matches) in map where matches > 1 {
            pairs += (matches-1) * matches / 2
            pairs %= mod
        }
        
        return pairs
    }

    private func reverse(_ num: Int) -> Int {
        var num = num
        var reversed = 0
        while num > 0 {
            reversed *= 10
            reversed += num % 10
            num /= 10
        }

        return reversed
    }
}
