class Solution {
    func minimumOneBitOperations(_ n: Int) -> Int {
        var answer = 0
        var k = 0
        var mask = 1

        while mask <= n {
            if n & mask != 0 {
                var num = 1
                for _ in 0..<k+1 {
                    num *= 2
                }
                answer = num - 1 - answer
            }

            mask <<= 1
            k += 1
        }

        return answer
    }
}
