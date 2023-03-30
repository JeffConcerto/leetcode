class Solution {
    func evenOddBit(_ n: Int) -> [Int] {
        var even = 0
        var odd = 0
        var n = n
        var index = 0

        while n > 0 {
            if n % 2 == 1 {
                if index % 2 == 0 {
                    even += 1
                } else {
                    odd += 1
                }
            } 
            n /= 2
            index += 1
        }
        return [even,odd]
    }
}
